package com.fly.sky.pythons;


import com.alibaba.fastjson.JSONObject;
import com.fly.sky.AirportApplication;
import com.fly.sky.condition.AirportCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.AirportCode;
import com.fly.sky.domain.Flight;
import com.fly.sky.repository.AirportCodeRepository;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.scrable.domain.cz.CZData1;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import com.fly.sky.scrable.domain.cz.CZData5;
import com.fly.sky.scrable.domain.cz.CZParam;
import com.fly.sky.util.RegexUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.stereotype.Service;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;


/**
 * 南航 航班爬取数据工具类
 * @Description:
 * @author：wangzekun
 * @CreatTime：2020年8月15日
 *
 */

@Service
@RunWith(SpringRunner.class)
@SpringBootTest(classes={AirportApplication.class})// 指定启动类
@Slf4j
public class CZFlightUtil {

    @Autowired
    private FlightRepository  flightRepository;


    @Autowired
    private AirportRepository airportRepository;
    @Autowired
    private AirportCodeRepository airportCodeRepository;

    @Test
    @Rollback(false)
    public  void  scrableCZ() throws InterruptedException {
        //抓取CZ地址
        String url="https://b2c.csair.com/portal/flight/direct/query";
        //获取机场列表
        AirportCode airportCode=new AirportCode();
        //airportCode.setDeptCode("PEK");
        List<AirportCode> airportsList=airportCodeRepository.findAirportCode(airportCode);
            for (AirportCode airport1 : airportsList) {
                //每请求一次休息5秒
                    Thread.currentThread().sleep(5000);
                    //请求的参数是：
                    CZParam CZParam = new CZParam(airport1.getDeptCode(), airport1.getArrCode(), "20200911");
                    String jsonCZ = JSONObject.toJSONString(CZParam);
                    log.info("爬取南航网站请求的参数是：" + jsonCZ);
                    //利用ip代理访问 获取代理ip和端口
                   // String ipAndPort[] = IpPortUtil.getIpAndPort();
                    String ipAndPort[] = {"49.232.228.221", "9998"};
                    if(ipAndPort!=null){
                    //String content = HttpRequestUtils.sendPost(ipAndPort[0], ipAndPort[1], url, jsonCZ,0);
                      String content = HttpRequestUtils.sendPost(ipAndPort[0], ipAndPort[1],url, jsonCZ,1);
                    //解析爬取南航的数据
                    CZData1 cZData1 = new JSONObject().parseObject(content, CZData1.class);
                    System.out.println(cZData1);
                    if (null == cZData1.getData()) {
                        airport1.setDesc("没有航班信息爬取不到数据");
                        log.info("从机场三字码" + airport1.getDeptCode()+"到机场三字码" +airport1.getArrCode()+"没有爬取到数据");
                    } else {
                        log.info("从机场三字码" + airport1.getDeptCode()+"到机场三字码" +airport1.getArrCode()+"成功爬取到数据");
                        List<CZData5> list = cZData1.getData().getSegment().get(0).getDateFlight().getFlight();
                        log.info("爬取到的南航数据是：" + list);
                        airport1.setDesc("再次成功爬取到数据");
                        //进行组装数据
                        for (CZData5 czData5 : list) {
                            if (!czData5.isCodeShare()) {
                                Flight flight = new Flight();
                                flight.setAirportNameEnd("");
                                flight.setAirlinesCode("CZ");
                                flight.setFlightNo(czData5.getFlightNo());
                                StringBuffer flightDate = new StringBuffer(czData5.getDepTime());
                                flightDate.insert(2, ":");
                                flightDate.append("-");
                                flightDate.append(czData5.getArrTime());
                                flightDate.insert(8, ":");
                                flight.setFlightDate(flightDate.toString());
                                flight.setAirportNameStartCode(czData5.getDepPort());
                                flight.setAirportNameEndCode(czData5.getArrPort());
                                if(!"无".equals(czData5.getStopNameZh().trim())){
                                    flight.setFlightRemark("(经停" + czData5.getStopNameZh().trim() + ")");
                                    flight.setFlightRequency("(经停" + czData5.getStopNameZh().trim() + ")");
                                }
                                //根据机场code查询机场数据
                                Airport arr = airportRepository.findAirportByCode(czData5.getArrPort());
                                Airport dep = airportRepository.findAirportByCode(czData5.getDepPort());
                                flight.setFlightNameEnd(arr.getAirportAbbreviate() + RegexUtil.filterAlphabetAndNumber(czData5.getArrivalTerminal()));
                                flight.setFlightNameStart(dep.getAirportAbbreviate() + RegexUtil.filterAlphabetAndNumber(czData5.getDepartureTerminal()));
                                flight.setAirportNameStart(dep.getAirportAbbreviate());
                                flight.setAirportNameEnd(arr.getAirportAbbreviate());
                                log.info("入库数据是：" + flight);
                                flightRepository.insertFlight(flight);
                            }
                        }
                      }
                    }else{
                        airport1.setDesc("端口链接失败没有爬取到数据");
                    }
                    //爬取完数据 需要改变状态
                log.info("爬取完数据 需要改变状态 改变的数据是：" + airport1);
                airportCodeRepository.updateAirportCode(airport1);
            }
    }




    @Test
    @Rollback(false)
    public  void  scrableCZByCode() throws InterruptedException {
        //抓取CZ地址
        String url="https://b2c.csair.com/portal/flight/direct/query";
        //获取机场列表
        AirportCode airportCode=new AirportCode();
        //airportCode.setDeptCode("PEK");

            //每请求一次休息5秒
            Thread.currentThread().sleep(5000);
            //请求的参数是：
            CZParam CZParam = new CZParam("CAN", "JXA", "20200920");
            String jsonCZ = JSONObject.toJSONString(CZParam);
            log.info("爬取南航网站请求的参数是：" + jsonCZ);
            //利用ip代理访问 获取代理ip和端口
            // String ipAndPort[] = IpPortUtil.getIpAndPort();
            String ipAndPort[] = {"49.232.228.221", "9998"};
            if(ipAndPort!=null){
                //String content = HttpRequestUtils.sendPost(ipAndPort[0], ipAndPort[1], url, jsonCZ,0);
                String content = HttpRequestUtils.sendPost(ipAndPort[0], ipAndPort[1],url, jsonCZ,1);
                //解析爬取南航的数据
                CZData1 cZData1 = new JSONObject().parseObject(content, CZData1.class);
                System.out.println(cZData1);
                if (null == cZData1.getData()) {
                 //   log.info("从机场三字码" + airport1.getDeptCode()+"到机场三字码" +airport1.getArrCode()+"没有爬取到数据");
                } else {
                 //   log.info("从机场三字码" + airport1.getDeptCode()+"到机场三字码" +airport1.getArrCode()+"成功爬取到数据");
                    List<CZData5> list = cZData1.getData().getSegment().get(0).getDateFlight().getFlight();
                    log.info("爬取到的南航数据是：" + list);
                    //进行组装数据
                    for (CZData5 czData5 : list) {
                        if (!czData5.isCodeShare()) {
                            Flight flight = new Flight();
                            flight.setAirportNameEnd("");
                            flight.setAirlinesCode("CZ");
                            flight.setFlightNo(czData5.getFlightNo());
                            StringBuffer flightDate = new StringBuffer(czData5.getDepTime());
                            flightDate.insert(2, ":");
                            flightDate.append("-");
                            flightDate.append(czData5.getArrTime());
                            flightDate.insert(8, ":");
                            flight.setFlightDate(flightDate.toString());
                            flight.setAirportNameStartCode(czData5.getDepPort());
                            flight.setAirportNameEndCode(czData5.getArrPort());
                            if(!"无".equals(czData5.getStopNameZh().trim())){
                                flight.setFlightRemark("(经停" + czData5.getStopNameZh().trim() + ")");
                                flight.setFlightRequency("(经停" + czData5.getStopNameZh().trim() + ")");
                            }
                            //根据机场code查询机场数据
                            Airport arr = airportRepository.findAirportByCode(czData5.getArrPort());
                            Airport dep = airportRepository.findAirportByCode(czData5.getDepPort());
                            flight.setFlightNameEnd(arr.getAirportAbbreviate() + RegexUtil.filterAlphabetAndNumber(czData5.getArrivalTerminal()));
                            flight.setFlightNameStart(dep.getAirportAbbreviate() + RegexUtil.filterAlphabetAndNumber(czData5.getDepartureTerminal()));
                            flight.setAirportNameStart(dep.getAirportAbbreviate());
                            flight.setAirportNameEnd(arr.getAirportAbbreviate());
                            log.info("入库数据是：" + flight);
                            flightRepository.insertFlight(flight);
                        }
                    }
                }
            }
            //爬取完数据 需要改变状态

    }


}
