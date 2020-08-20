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
import com.fly.sky.util.RegexUtil;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.stereotype.Service;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringRunner;

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
        List<AirportCode> airportsList=airportCodeRepository.findAirportCode(airportCode);
            for (AirportCode airport1 : airportsList) {
                //每请求一次休息5秒
                    Thread.currentThread().sleep(5000);
                String url="http://www.ceair.com/addservice/flightStatusList.shtml?qType=1&flightTime=2020-09-12&departPort="+airport1.getDeptCode()+"&arrivalPot="+airport1.getArrCode()+"&_="+System.currentTimeMillis();
                    log.info("爬取东航网站请求的地址是：" + url);
                    //利用ip代理访问 获取代理ip和端口
                    //String content = HttpRequestUtils.sendPost(ipAndPort[0], ipAndPort[1], url, jsonCZ,0);
                String content =httpRequestUtils.sendGetNoProxy("49.232.228.221", "9998",url);
                System.out.println("爬取东航网站请求的结果是："+content);
                    //爬取完数据 需要改变状态
                log.info("爬取完数据 需要改变状态 改变的数据是：" + airport1);
                airportCodeRepository.updateAirportCode(airport1);
            }
    }


}
