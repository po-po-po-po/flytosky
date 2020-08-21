package com.fly.sky.pythons;


import com.alibaba.fastjson.JSONObject;
import com.fly.sky.AirportApplication;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.AirportCode;
import com.fly.sky.domain.Flight;
import com.fly.sky.repository.AirportCodeRepository;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.scrable.domain.cz.CZData1;
import com.fly.sky.scrable.domain.cz.CZData5;
import com.fly.sky.scrable.domain.cz.CZParam;
import com.fly.sky.scrable.domain.mu.MUData1;
import com.fly.sky.scrable.domain.mu.MUData2;
import com.fly.sky.scrable.domain.mu.MUData3;
import com.fly.sky.util.RegexUtil;
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

import java.util.Date;
import java.util.List;


/**
 * 东航 航班爬取数据工具类
 * @Description:
 * @author：wangzekun
 * @CreatTime：2020年8月15日
 *
 */

@Service
@RunWith(SpringRunner.class)
@SpringBootTest(classes={AirportApplication.class})// 指定启动类
@Slf4j
public class MUFlightUtil {

    @Autowired
    private FlightRepository  flightRepository;

    @Autowired
    private HttpRequestUtils  httpRequestUtils;


    @Autowired
    private AirportRepository airportRepository;

    @Autowired
    private AirportCodeRepository airportCodeRepository;

    @Test
    @Rollback(false)
    public  void  scrableMU() throws Exception {
        //抓取CZ地址
        //获取机场列表
        AirportCode airportCode=new AirportCode();
        airportCode.setStatus("0");
        List<AirportCode> airportsList=airportCodeRepository.findAirportCode(airportCode);
            for (AirportCode airport1 : airportsList) {
                //每请求一次休息5秒
                Thread.currentThread().sleep(5000);
                //String ipAndPort[] = IpPortUtil.getIpAndPort();
                String url="http://www.ceair.com/addservice/flightStatusList.shtml?qType=1&flightTime=2020-09-12&departPort="+airport1.getDeptCode()+"&arrivalPot="+airport1.getArrCode()+"&_="+System.currentTimeMillis();
                    log.info("爬取东航网站请求的地址是：" + url);
                    //需要使用代理
                //String content =httpRequestUtils.sendGetProxy(url,ipAndPort[0], ipAndPort[1]);
                String content =httpRequestUtils.sendGetNoProxy("","",url);
                System.out.println(content);
                try{
                    //解析爬取东航的数据
                    MUData1 mUData1 = new JSONObject().parseObject(content, MUData1.class);
                    if(!StringUtils.isEmpty(mUData1.getErrorMsg())){
                            airport1.setStatus("1");
                            airport1.setDesc("东航该航线没有航班");
                            log.info("东航该航线没有航班。。。。。。。：" + airport1);
                    }else{
                        if(null!=mUData1.getAocFlightInfo()&&!CollectionUtils.isEmpty(mUData1.getAocFlightInfo().getFlightInfo())){
                            List<MUData3> mUData3List= mUData1.getAocFlightInfo().getFlightInfo();
                            for (MUData3 muData3 : mUData3List) {
                                Flight flight = new Flight();
                              if(muData3.getFlightNo().length()>4) {
                                  airport1.setDesc("东航空铁联运");
                                  log.info("是空铁联运，不能入库：" + flight);
                              }else{
                                  //根据机场code查询机场数据
                                  Airport dept = airportRepository.findAirportByCode(muData3.getDeptAirport());
                                  Airport arr = airportRepository.findAirportByCode(muData3.getArrAirport());
                                  flight.setAirlinesCode(muData3.getCarrier());
                                  flight.setFlightNo(muData3.getCarrier()+muData3.getFlightNo());
                                  flight.setFlightDate(muData3.getPlanDeptTime().substring(11,16)+"-"+muData3.getPlanArrTime().substring(11,16));
                                  flight.setAirportNameStartCode(muData3.getDeptAirport());
                                  flight.setAirportNameEndCode(muData3.getArrAirport());
                                  flight.setFlightNameEnd(arr.getAirportAbbreviate()+muData3.getARR_TERMINAL());
                                  flight.setFlightNameStart(dept.getAirportAbbreviate()+muData3.getDEPT_TERMINAL());
                                  flight.setAirportNameStart(dept.getAirportAbbreviate());
                                  flight.setAirportNameEnd(arr.getAirportAbbreviate());
                                  log.info("入库数据是：" + flight);
                                  if(null!=flightRepository.findFlightNoRepeat(flight.getFlightNo(),flight.getAirportNameStartCode(),flight.getAirportNameEndCode())){
                                      log.info("航班号重复不能入库：" + flight);
                                  } else{
                                      flightRepository.insertFlight(flight);
                                  }
                              }
                            }
                            airport1.setStatus("1");
                            log.info("爬取数据成功。。。。。。。：" + airport1);
                            airport1.setDesc("爬取数据成功");
                        }else{
                            airport1.setDesc("网络错误");
                            log.info("网络错误需要属刷新验证码没有爬取到数据。。。。。。。：" + airport1);
                        }
                    }
                }catch (Exception e){
                    airport1.setDesc("爬取数据失败，继续爬取。。。。。");
                    airport1.setStatus("0");
                    log.info("爬取数据失败。。。。。。。：" + airport1);
                }finally {
                    //爬取完数据 需要改变状态
                    log.info("爬取完数据 需要改变状态 改变的数据是：" + airport1);
                    airportCodeRepository.updateAirportCode(airport1);
                }

            }
    }


}
