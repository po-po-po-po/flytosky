package com.fly.sky.pythons;


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
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
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
public class AirportUtil {

    @Autowired
    private FlightRepository  flightRepository;

    @Autowired
    private AirportRepository airportRepository;


    @Autowired
    private AirportCodeRepository airportCodeRepository;


    @Test
    @Rollback(false)
    public  void  scrableAirport() {
        List<Airport> flightList= flightRepository.findFlightsGroupByAirportCode();
        for (Airport airport : flightList) {
            airport.setAirportAbbreviate(airport.getAirportName());
            airportRepository.insertAirport(airport);
            log.info("。。。。。。。。。。插入机场数据。。。。。。。。。。。。。"+airport);
        }
        //flightList

    }


    @Test
    @Rollback(false)
    public  void  scrableCode() {
        List<AirportCode> codelist= airportCodeRepository.distinctdeptCode();
        for (AirportCode code : codelist) {
            AirportCode airportCode=new AirportCode();
            airportCode.setDeptCode("xnn");
            airportCode.setDeptName("西宁");
            airportCode.setArrCode(code.getDeptCode());
            airportCode.setArrName(code.getDeptName());
            airportCodeRepository.insertAirportCode(airportCode);
        }
        //flightList

    }

    @Test
    @Rollback(false)
    public  void  scrableCode1() {
        List<AirportCode> codelist= airportCodeRepository.distinctdeptCode();
        for (AirportCode code : codelist) {
            AirportCode airportCode=new AirportCode();
            airportCode.setDeptCode(code.getDeptCode());
            airportCode.setDeptName(code.getDeptName());
            airportCode.setArrCode("xnn");
            airportCode.setArrName("西宁");
            airportCodeRepository.insertAirportCode(airportCode);
        }
        //flightList

    }

}
