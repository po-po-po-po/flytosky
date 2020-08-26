package com.fly.sky.pythons;


import com.alibaba.fastjson.JSONObject;
import com.fly.sky.AirportApplication;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.AirportCode;
import com.fly.sky.domain.Flight;
import com.fly.sky.repository.AirportCodeRepository;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.scrable.domain.ho.HOData1;
import com.fly.sky.scrable.domain.ho.HOData2;
import com.fly.sky.scrable.domain.xc.*;
import com.fly.sky.scrable.domain.zh.Condition;
import com.fly.sky.scrable.domain.zh.ZHParam;
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
import java.util.HashMap;
import java.util.List;
import java.util.Map;


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
public class ZHFlightUtil {

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
    public  void  scrableZH() throws Exception {
        AirportCode airportCode=new AirportCode();
        airportCode.setStatus("0");
        List<AirportCode> airportsList=airportCodeRepository.findAirportCode(airportCode);
            for (AirportCode airport1 : airportsList) {
                //抓取ZH地址
                String url=new String("https://flights.ctrip.com/itinerary/api/12808/products");
                //获取机场列表
                //每请求一次休息5秒
                Thread.currentThread().sleep(5000);
                //请求的参数是：
                XCParam1 xCParam1 = new XCParam1();
                xCParam1.setFlightWay("Oneway");
                xCParam1.setClassType("ALL");
                xCParam1.setHasChild(false);
                xCParam1.setHasBaby(false);
                xCParam1.setSearchIndex(1);
                xCParam1.setCt("1598410060180");
                xCParam1.setArmy(false);
                xCParam1.setSelectedInfos(null);
                xCParam1.setToken("80df1cf0b4d45dd4674d73e7de72710e");
                XCParam2 xCParam2 = new XCParam2();
                xCParam2.setDate("2020-09-21");
                xCParam2.setDcityname(airport1.getDeptName());
                xCParam2.setAcityname(airport1.getArrName());
                xCParam2.setDcity(airport1.getDeptCode());//bjs
                xCParam2.setAcity(airport1.getArrCode());
                List<XCParam2> list=new ArrayList<XCParam2>();
                list.add(xCParam2);
                xCParam1.setAirportParams(list);
                String xcParam = JSONObject.toJSONString(xCParam1);;
                log.info("爬取携程网站请求的URL是：" + url+"请求的参数是:"+xcParam);
                String ipAndPort[] = {"49.232.228.221", "9998"};
                    if(ipAndPort!=null){
                        XCData0 xCData0 =new XCData0();
                        String content = HttpRequestUtils.sendPost(ipAndPort[0], ipAndPort[1],url, xcParam,1);
                            if(content.contains("服务不可用")){
                                airport1.setDesc("服务不可用");
                            }else{
                            //解析爬取携程网站的数据
                                xCData0 = new JSONObject().parseObject(content, XCData0.class);
                        }
                    System.out.println("解析结果：：：：："+JSONObject.toJSONString(xCData0));
                    if (CollectionUtils.isEmpty(xCData0.getData().getRouteList())){
                        airport1.setDesc("没有查询到航班信息");
                        log.info("从机场三字码" + airport1.getDeptCode()+"到机场三字码" +airport1.getArrCode()+"没有爬取到数据");
                    } else {
                        log.info("从机场三字码" + airport1.getDeptCode() + "到机场三字码" + airport1.getArrCode() + "成功爬取到数据");
                        List<XCData2> routeList = xCData0.getData().getRouteList();
                        airport1.setDesc("成功爬取到数据");
                        //进行组装数据
                        for (XCData2 xCData2 : routeList) {
                            //说明是直达航班 不是中转航班
                            if ("Flight".equals(xCData2.getRouteType())) {
                                List<XCData3> legsList = xCData2.getLegs();
                                for (XCData3 xCData3 : legsList) {
                                    List<XCData4> flightList = xCData3.getFlight();
                                    for (XCData4 xCData4 : flightList) {
                                        //过滤共享航班
                                        if(StringUtils.isEmpty(xCData4.getSharedFlightNumber())){
                                            Flight flight = new Flight();
                                            flight.setFlightNo(xCData4.getFlightNumber());
                                            flight.setAirlinesCode(xCData4.getAirlineCode());
                                            String depTime = xCData4.getDepartureDate().substring(xCData4.getDepartureDate().length() - 8,xCData4.getDepartureDate().length() - 3);
                                            String arrTime = xCData4.getArrivalDate().substring(xCData4.getArrivalDate().length() - 8,xCData4.getDepartureDate().length() - 3);
                                            flight.setFlightDate(depTime + "-" + arrTime);
                                            XCData5 departureAirportInfo = xCData4.getDepartureAirportInfo();
                                            XCData5 arrivalAirportInfo = xCData4.getArrivalAirportInfo();
                                            flight.setAirportNameStartCode(departureAirportInfo.getAirportTlc());
                                            flight.setAirportNameEndCode(arrivalAirportInfo.getAirportTlc());
                                            //根据机场code查询机场数据
                                            Airport dept = airportRepository.findAirportByCode(departureAirportInfo.getAirportTlc());
                                            Airport arr = airportRepository.findAirportByCode(arrivalAirportInfo.getAirportTlc());
                                            flight.setFlightNameStart(dept.getAirportAbbreviate() + departureAirportInfo.getTerminal().getName());
                                            flight.setFlightNameEnd(arr.getAirportAbbreviate() + arrivalAirportInfo.getTerminal().getName());
                                            flight.setAirportNameStart(dept.getAirportAbbreviate());
                                            flight.setAirportNameEnd(arr.getAirportAbbreviate());
                                            //处理经停航班
                                            if(!CollectionUtils.isEmpty(xCData4.getStopInfo())){
                                               String airportCodes= xCData4.getStopInfo().get(0).getAirportCode();
                                                Airport stop = airportRepository.findAirportByCode(airportCodes);
                                                String stopTerminal=xCData4.getStopInfo().get(0).getBuildingName();
                                                if(null==stopTerminal){
                                                    stopTerminal="";
                                                }
                                                flight.setFlightRemark("(经停"+stop.getAirportAbbreviate()+stopTerminal+")");
                                            }
                                            log.info("入库数据是：" + flight);
                                            flightRepository.insertFlight(flight);
                                        }
                                    }
                                }
                            }
                        }
                    }
                 }
                //爬取完数据 需要改变状态
                airport1.setStatus("1");
                log.info("爬取完数据 需要改变状态 改变的数据是：" + airport1);
                airportCodeRepository.updateAirportCode(airport1);
            }
    }


}
