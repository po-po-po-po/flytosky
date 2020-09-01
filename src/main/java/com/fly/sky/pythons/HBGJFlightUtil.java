package com.fly.sky.pythons;


import com.alibaba.fastjson.JSONObject;
import com.fly.sky.AirportApplication;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.AirportCode;
import com.fly.sky.domain.Flight;
import com.fly.sky.repository.AirportCodeRepository;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.scrable.domain.hbgj.DATA;
import com.fly.sky.scrable.domain.hbgj.HBGJ;
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

    @Test
    @Rollback(false)
    public  void  scrableHBGJ() throws Exception {
        AirportCode airportCode=new AirportCode();
        airportCode.setStatus("0");
        List<AirportCode> airportsList=airportCodeRepository.findAirportCode(airportCode);
            for (AirportCode airport1 : airportsList) {
                //抓取ZH地址
                String url=new String("https://api.133.cn/third/flight?d=2020-09-21&dc=TYN&ac=CKG");
                //获取机场列表
                //每请求一次休息5秒
                Thread.currentThread().sleep(5000);
                String content = httpRequestUtils.sendGetNoProxy("", "",url);
                DATA data = new JSONObject().parseObject(content, DATA.class);
                if(null!=data){
                    List<HBGJ> data1 = data.getData();
                    for (HBGJ hbgj : data1) {
                        if("0".equals(hbgj.getShareFlag())){
                            Flight flight = new Flight();
                            flight.setFlightNo(hbgj.getFlightNo());
                            flight.setAirlinesCode(hbgj.getFlightNo().substring(0,2));
                            flight.setFlightDate(hbgj.getDepPlanTime() + "-" + hbgj.getArrPlanTime());
                            flight.setAirportNameStartCode(hbgj.getDepCode());
                            flight.setAirportNameEndCode(hbgj.getArrCode());
                            //根据机场code查询机场数据
                            Airport dept = airportRepository.findAirportByCode(hbgj.getDepCode());
                            Airport arr = airportRepository.findAirportByCode(hbgj.getArrCode());
                            flight.setFlightNameStart(dept.getAirportAbbreviate() + hbgj.getDepTerminal());
                            flight.setFlightNameEnd(arr.getAirportAbbreviate() + hbgj.getArrTerminal());
                            flight.setAirportNameStart(dept.getAirportAbbreviate());
                            flight.setAirportNameEnd(arr.getAirportAbbreviate());
                            log.info("入库数据是：" + flight);
                            flightRepository.insertFlight(flight);
                        }
                        
                    }
                }

                 }

            }
    }


