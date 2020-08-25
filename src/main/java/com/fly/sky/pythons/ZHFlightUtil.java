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
                String url=new String("http://www.shenzhenair.com/szair_B2C/flightSearch.action");
                //获取机场列表
                //每请求一次休息5秒
                Thread.currentThread().sleep(5000);
                //Condition condition=new Condition(airport1.getDeptCode(), airport1.getArrCode(),"DC","2020-10-01","2020-10-02");
                //Condition condition=new Condition("PEK", "WUX","DC","2020-10-01","2020-10-02");
                //请求的参数是：
                //ZHParam zHParam = new ZHParam();
                Map map=new HashMap<>();
                map.put("condition.orgCityCode","PEK");
                map.put("condition.dstCityCode","WUX");
                map.put("condition.hcType","DC");
                map.put("condition.orgDate","2020-08-29");
                map.put("condition.dstDate","2020-08-30");
               // zHParam.setCondition(condition);
                String jsonZH = JSONObject.toJSONString(map);
                log.info("爬取深圳航空航空网站请求的URL是：" + url+"请求的参数是:"+jsonZH);
                String ipAndPort[] = {"49.232.228.221", "9998"};
                    if(ipAndPort!=null){
                        String content = null;
                        //解析爬取南航的数据
                        HOData1 hoData1 =new HOData1();
                            content = HttpRequestUtils.sendPost(ipAndPort[0], ipAndPort[1],url, jsonZH,1);
                            log.info("爬取深圳航空网站返回内容是：" +content);
                            if(content.contains("服务不可用")){
                                airport1.setDesc("服务不可用");
                            }else{
                            //解析爬取吉祥的数据
                            hoData1 = new JSONObject().parseObject(content, HOData1.class);
                        }
                    System.out.println(hoData1);
                    if (CollectionUtils.isEmpty(hoData1.getFlightInfoList())){
                        airport1.setDesc("没有航班信息");
                        log.info("从机场三字码" + airport1.getDeptCode()+"到机场三字码" +airport1.getArrCode()+"没有爬取到数据");
                    } else {
                        log.info("从机场三字码" + airport1.getDeptCode()+"到机场三字码" +airport1.getArrCode()+"成功爬取到数据");
                        List<HOData2> FlightInfoList = hoData1.getFlightInfoList();
                        log.info("爬取到的吉祥航空航班数据是：" + FlightInfoList);
                        airport1.setDesc("成功爬取到数据");
                        //进行组装数据
                        for (HOData2 hoData2 : FlightInfoList) {
                            //过滤共享航班
                            if (hoData2.getFlightNo().startsWith("HO")) {
                                Flight flight = new Flight();
                                flight.setFlightNo(hoData2.getFlightNo());

                                flight.setAirlinesCode("HO");
                                String depeTime=hoData2.getDepDateTime().substring(hoData2.getDepDateTime().length()-5);
                                String arrTime=hoData2.getArrDateTime().substring(hoData2.getArrDateTime().length()-5);
                                flight.setFlightDate(depeTime+"-"+arrTime);
                                flight.setAirportNameStartCode(hoData2.getDepAirport());
                                flight.setAirportNameEndCode(hoData2.getArrAirport());
                                //根据机场code查询机场数据
                                Airport dept = airportRepository.findAirportByCode(hoData2.getDepAirport());
                                Airport arr = airportRepository.findAirportByCode(hoData2.getArrAirport());
                                flight.setFlightNameStart(dept.getAirportAbbreviate()+hoData2.getDepTerm());
                                flight.setFlightNameEnd(arr.getAirportAbbreviate()+hoData2.getArrTerm());
                                flight.setAirportNameStart(dept.getAirportAbbreviate());
                                flight.setAirportNameEnd(arr.getAirportAbbreviate());
                                //处理经停航班
                                if(null!=hoData2.getStopAirport()){
                                    //根据机场code查询机场数据
                                    Airport stop = airportRepository.findAirportByCode(hoData2.getStopAirport());
                                    flight.setFlightRequency("(经停"+stop.getAirportAbbreviate()+")");
                                }
                                log.info("入库数据是：" + flight);
                                flightRepository.insertFlight(flight);
                            }
                            }

                      }
                    }else{
                        airport1.setDesc("端口链接失败没有爬取到数据");
                    }
                    //爬取完数据 需要改变状态
                airport1.setStatus("1");
                log.info("爬取完数据 需要改变状态 改变的数据是：" + airport1);
                airportCodeRepository.updateAirportCode(airport1);
            }
    }


}
