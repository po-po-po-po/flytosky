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

import java.util.List;


/**
 * 南航 航班爬取数据工具类
 * @Description:
 * @author：wangzekun
 * @CreatTime：2020年8月15日
 *
 */

@RunWith(SpringRunner.class)
@SpringBootTest(classes={AirportApplication.class})// 指定启动类
@Slf4j
public class AirwayUtil {

    @Autowired
    private FlightRepository  flightRepository;

    @Autowired
    private AirwayRepository airwayRepository;


    @Test
    @Rollback(false)
    public  void  scrableAirways() {
        List<Flight> flightList= flightRepository.findFlightsGroupByAirportNameAndAirportNameEnd();
        for (Flight flight : flightList) {
            AirwayCondition condition=new AirwayCondition();
            condition.setAirwayNameStart(flight.getAirportNameStart());
            condition.setAirwayNameEnd(flight.getAirportNameEnd());
            Airway airway=airwayRepository.findAirwaysByStartAndEnd(condition);
            if(null==airway){
                Airway airway1y=new Airway();
                airway1y.setAirwayNameStart(flight.getAirportNameStart());
                airway1y.setAirwayNameEnd(flight.getAirportNameEnd());
                airway1y.setAirwayNameStartCode(flight.getAirportNameStartCode());
                airway1y.setAirwayNameEndCode(flight.getAirportNameEndCode());
                airwayRepository.insertAirway(airway1y);
                log.info("。。。。。。。。。。插入航线。。。。。。。。。。。。。"+airway1y);
            }
            //log.info("。。。。。。。。。。有此航线不需要插入数据。。。。。。。。。。。。。");
        }
        //flightList

    }


}
