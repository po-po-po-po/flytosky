package com.fly.sky.pythons;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.fly.sky.AirportApplication;
import com.fly.sky.condition.AirportCondition;
import com.fly.sky.condition.AirwayCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.AirportCode;
import com.fly.sky.domain.Airway;
import com.fly.sky.domain.Flight;
import com.fly.sky.repository.AirportCodeRepository;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.repository.AirwayRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.scrable.domain.ho.HOData1;
import com.fly.sky.scrable.domain.jsonairport.Airport0;
import com.fly.sky.scrable.domain.jsonairport.Airport1;
import com.fly.sky.scrable.domain.jsonairport.Airport2;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.*;
import java.util.Date;
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
            airportCode.setDeptCode("she");
            airportCode.setDeptName("沈阳");
            airportCode.setArrCode(code.getDeptCode());
            airportCode.setArrName(code.getDeptName());
            airportCodeRepository.insertAirportCode(airportCode);
        }
        //flightList

    }

    @Test
    @Rollback(false)
    public  void  scrableCode1 () {
        List<AirportCode> codelist= airportCodeRepository.distinctdeptCode();
        for (AirportCode code : codelist) {
            AirportCode airportCode=new AirportCode();
            airportCode.setDeptCode(code.getDeptCode());
            airportCode.setDeptName(code.getDeptName());
            airportCode.setArrCode("PKX");
            airportCode.setArrName("大兴");
            airportCodeRepository.insertAirportCode(airportCode);
        }
        //flightList

    }

    @Test
    @Rollback(false)
    public  void  scrableCode3 () {
        List<Airport> codelist= airportRepository.findAirportsByCondition(new AirportCondition());

        //citys[109] = new Array('NNY','南阳','NANYANG','NY');
        for (int i = 0; i < codelist.size(); i++) {
            System.out.println("citys["+i+"] = "+"new Array('"+codelist.get(i).getAirportCode()+"','"+codelist.get(i).getAirportAbbreviate()+"','"+codelist.get(i).getAirportLocation()+"','"+codelist.get(i).getAirportArea()+"');");
            
        }
        //flightList

    }


    @Test
    @Rollback(false)
    public  void  scrableAirportJson() throws IOException {
        System.out.println("eee"+"dddd");
        String jsonStr = "";

            File file = new File("E:\\software-po\\github\\flytosky\\src\\main\\resources\\airport.json");
            FileReader fileReader = new FileReader(file);
            Reader reader = new InputStreamReader(new FileInputStream(file),"Utf-8");
            int ch = 0;
            StringBuffer sb = new StringBuffer();
            while ((ch = reader.read()) != -1) {
                sb.append((char) ch);
            }
            fileReader.close();
            reader.close();
            jsonStr = sb.toString();
        JSONArray ja = JSON.parseArray(jsonStr);
        Object[] a=ja.toArray();
        System.out.println(ja.toArray());
            for (Object  airport1 : a) {
                System.out.println(airport1);
              //  Airport1 airport11=(Airport1)airport1;
                Airport1  airport11 = new JSONObject().parseObject(airport1.toString(), Airport1.class);
                String title=airport11.getTitle();
                String country=airport11.getCountry();
                if(airport11.getAirport()!=null&&airport11.getAirport().size()>0){
                    Object o1=airport11.getAirport().get(0);
                    Airport2  airport2 = new JSONObject().parseObject(o1.toString(), Airport2.class);
                    Airport airport=new Airport();
                    airport.setAirportCode(airport2.getCode());
                    airport.setAirportLocation(title);
                    airport.setAirportAbbreviate(title+airport2.getTitle());
                    airport.setAirportName(title+airport2.getTitle());
                    airport.setCreateTime(new Date());
                    airport.setStatus(6);
                    if(!country.equals("CN")){
                        Airport airport3=airportRepository.findAirportByCode(airport2.getCode());
                        if(null==airport3){
                            airportRepository.insertAirport(airport);
                        }

                    }
                }

             }
    }



    @Test
    @Rollback(false)
    public  void  scrableCode2222 () {
        //获取机场列表
        List<Airport> airportsList1=airportRepository.findAirportsByCondition(new AirportCondition());
        for (Airport airport : airportsList1) {
            System.out.println(airport.getAirportCode()+"|"+airport.getAirportName());
        }

    }



}
