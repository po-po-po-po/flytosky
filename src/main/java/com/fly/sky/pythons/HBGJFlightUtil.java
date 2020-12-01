package com.fly.sky.pythons;


import com.alibaba.fastjson.JSONObject;
import com.fly.sky.AirportApplication;
import com.fly.sky.condition.AirwayCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.AirportCode;
import com.fly.sky.domain.Airway;
import com.fly.sky.domain.Flight;
import com.fly.sky.repository.AirportCodeRepository;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.repository.AirwayRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.scrable.domain.hbgj.DATA;
import com.fly.sky.scrable.domain.hbgj.HBGJ;
import com.fly.sky.scrable.domain.hbgj.StopCity;
import com.fly.sky.scrable.domain.xc.*;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.stereotype.Service;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;


/**
 * 深圳航空 航班爬取数据工具类
 * @Description:
 * @author：wangzekun
 * @CreatTime：2020年8月15日
 *
 */

@Service
@RunWith(SpringRunner.class)
@SpringBootTest(classes={AirportApplication.class})// 指定启动类
@Slf4j
public class HBGJFlightUtil {

    @Autowired
    private FlightRepository  flightRepository;

    @Autowired
    private AirportRepository airportRepository;
    @Autowired
    private AirportCodeRepository airportCodeRepository;

    @Autowired
    private HttpRequestUtils httpRequestUtils;


    @Autowired
    private AirwayRepository airwayRepository;

    @Test
    @Rollback(false)
    public  void  scrableHBGJ() throws Exception {
        AirportCode airportCode=new AirportCode();
        airportCode.setStatus("0");
        List<AirportCode> airportsList=airportCodeRepository.findAirportCode(airportCode);
            for (AirportCode airport1 : airportsList) {
                //抓取ZH地址
                String url="https://api.133.cn/third/flight?d=2020-12-18&dc="+airport1.getDeptCode()+"&ac="+airport1.getArrCode();
                //获取机场列表
                //每请求一次休息5秒
                Thread.currentThread().sleep(5000);
                String[] ip=IpPortUtil.getIpAndPort();
                String content = httpRequestUtils.sendGetProxy(url,ip[0],ip[1]);
                log.info("爬取网站的原始数据是：" + content);
                DATA data = new JSONObject().parseObject(content, DATA.class);
                if(null!=data){
                    List<HBGJ> data1 = data.getData();
                    if(!CollectionUtils.isEmpty(data1)){
                        for (HBGJ hbgj : data1) {
                            if("0".equals(hbgj.getShareFlag())){
                                Flight flight = new Flight();
                                flight.setFlightNo(hbgj.getFlightNo());
                                flight.setAirlinesCode(hbgj.getFlightNo().substring(0,2));
                                flight.setFlightDate(hbgj.getDepPlanTime() + "-" + hbgj.getArrPlanTime());
                                flight.setAirportNameStartCode(hbgj.getDepCode());
                                flight.setAirportNameEndCode(hbgj.getArrCode());
                                flight.setFlightRequency("5");
                                //根据机场code查询机场数据
                                Airport dept = airportRepository.findAirportByCode(hbgj.getDepCode());
                                Airport arr = airportRepository.findAirportByCode(hbgj.getArrCode());
                                flight.setFlightNameStart(dept.getAirportAbbreviate() + hbgj.getDepTerminal());
                                flight.setFlightNameEnd(arr.getAirportAbbreviate() + hbgj.getArrTerminal());
                                flight.setAirportNameStart(dept.getAirportAbbreviate());
                                flight.setAirportNameEnd(arr.getAirportAbbreviate());
                                //判断是否是经停航班
                                if(!CollectionUtils.isEmpty(hbgj.getSections())){
                                    StopCity city=hbgj.getSections().get(0);
                                    Airport aiop = airportRepository.findAirportByCode(city.getAirportCode());
                                    flight.setFlightRemark(aiop.getAirportAbbreviate());
                                }
                                log.info("入库数据是：" + flight);
                                airport1.setDesc("爬取成功");
                                flightRepository.insertFlight(flight);
                            }

                        }
                        //插入的航线
                        AirwayCondition condition=new AirwayCondition();
                        Airport dept = airportRepository.findAirportByCode(airport1.getDeptCode());
                        Airport arr = airportRepository.findAirportByCode(airport1.getArrCode());
                        condition.setAirwayNameStart(dept.getAirportAbbreviate());
                        condition.setAirwayNameEnd(arr.getAirportAbbreviate());
                        Airway airway=airwayRepository.findAirwaysByStartAndEnd(condition);
                        if(null==airway){
                            Airway airway1y=new Airway();
                            airway1y.setAirwayNameStart(dept.getAirportAbbreviate());
                            airway1y.setAirwayNameEnd(arr.getAirportAbbreviate());
                            airway1y.setAirwayNameStartCode(airport1.getDeptCode());
                            airway1y.setAirwayNameEndCode(airport1.getArrCode());
                            airwayRepository.insertAirway(airway1y);
                            log.info("。。。。。。。。。。插入航线。。。。。。。。。。。。。"+airway1y);
                        }else{
                            log.info("。。。。。。。。。。有此航线不需要插入数据。。。。。。。。。。。。。");
                        }

                    }else {
                        airport1.setDesc("没有航班信息");
                    }

                }
                //爬取完数据 需要改变状态
                airport1.setStatus("1");
                log.info("爬取完数据 需要改变状态 改变的数据是：" + airport1);
                airportCodeRepository.updateAirportCode(airport1);
                 }

            }
    }


