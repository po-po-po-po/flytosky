package com.fly.sky.service.impl;


import com.fly.sky.condition.AirlineCondition;
import com.fly.sky.condition.AirportCondition;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Airlines;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.Flight;
import com.fly.sky.exceptions.BusinessCode;
import com.fly.sky.exceptions.BusinessException;
import com.fly.sky.repository.AirlinesRepository;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.service.AirlinesService;
import com.fly.sky.service.AirportService;
import com.fly.sky.util.PagedList;
import com.fly.sky.vo.AirlinesDetail;
import com.fly.sky.vo.FlightDetail;
import com.fly.sky.vo.WechaIndexAirlines;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;
import java.util.stream.Collectors;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:55
 * @Description
 */

@Service("airlinesService")
public class AirlinesServiceImpl implements AirlinesService {

    @Resource
    AirlinesRepository airlinesRepository;

    @Resource
    FlightRepository flightRepository;




    public List<Airlines> findAllAirlines(AirlineCondition condition) {
        List<Airlines>  airlinesList=airlinesRepository.findAirlinesByCondition(condition);
        return airlinesList;
    }


    public Airlines findAirlinesById(Integer id) {
        return airlinesRepository.findAirlinesById(id);
    }

    public List<Airlines> selectAirlineListByAirlinesCodeList(List airlinesCodeList){
        return airlinesRepository.selectAirlineListByAirlinesCodeList(airlinesCodeList);
    }


    public AirlinesDetail findFlightsAndAirportsByAirlines(FlightCondition condition){
        AirlinesDetail detail=new AirlinesDetail();
        //机场处理
        if(StringUtils.isNotEmpty(condition.getFlightNameStart())){
            condition.setAirportNameStart(condition.getFlightNameStart().replace("机场",""));
        }
        if(StringUtils.isNotEmpty(condition.getFlightNameEnd())){
            condition.setAirportNameEnd(condition.getFlightNameEnd().replace("机场",""));
        }
        condition.setFlightNameStart(null);
        condition.setFlightNameEnd(null);
        //查询航司能飞往的航班列表
        List<FlightDetail> flightList=flightRepository.findFlightsAndAirlinesByCondition(condition);
        detail.setFlightList(flightList);
        //对起飞时间做处理
        if(StringUtils.isNotEmpty(condition.getFlightDate())&&!"起飞时间".equals(condition.getFlightDate())){
            String[] split =  condition.getFlightDate().split("-");
            String flightDateStart=split[0];
            String flightDateEnd=split[1];
            flightList = flightList.stream().filter(
                    flight ->
                            flight.getFlightDate().split("-")[0].compareTo(flightDateStart)>=0&&flight.getFlightDate().split("-")[0].compareTo(flightDateEnd)<=0).collect(
                    Collectors.toList());
        }
        detail.setFlightList(flightList);
        //查询航司能飞往的出发机场列表
        List<Airport> airportStartList=flightRepository.findFlightsGroupByFlightNameStartByAirlinesCode(condition.getAirlinesCode());
        detail.setAirportStartList(airportStartList);
        //查询航司能飞往的出发机场列表
        List<Airport> airportEndList=flightRepository.findFlightsGroupByFlightNameEndByAirlinesCode(condition.getAirlinesCode());
        detail.setAirportEndList(airportEndList);
        //查询航司信息
        Airlines airlines=airlinesRepository.findAirlinesByAirlinesCode(condition.getAirlinesCode());
        detail.setAirlines(airlines);
        return detail;
    };


    public Map<String, WechaIndexAirlines> wechatIndexAirlines(AirlineCondition condition){
        Map<String, WechaIndexAirlines> map=new HashMap<>();
        WechaIndexAirlines A1=new WechaIndexAirlines("CZ","../airlinesflights/airlinesflights?airline_id=cz","https://www.potucs.com/wechat/airline/cz.png","南方航空");
        WechaIndexAirlines A2=new WechaIndexAirlines("MU","../airlinesflights/airlinesflights?airline_id=mu","https://www.potucs.com/wechat/airline/mu.png","南方航空");
        WechaIndexAirlines A3=new WechaIndexAirlines("CA","../airlinesflights/airlinesflights?airline_id=ca","https://www.potucs.com/wechat/airline/ca.png","南方航空");
        WechaIndexAirlines A4=new WechaIndexAirlines("HU","../airlinesflights/airlinesflights?airline_id=hu","https://www.potucs.com/wechat/airline/hu.png","南方航空");
        WechaIndexAirlines A5=new WechaIndexAirlines("3U","../airlinesflights/airlinesflights?airline_id=3u","https://www.potucs.com/wechat/airline/3u.png","南方航空");
        WechaIndexAirlines A6=new WechaIndexAirlines("MF","../airlinesflights/airlinesflights?airline_id=mf","https://www.potucs.com/wechat/airline/mf.png","南方航空");
        WechaIndexAirlines A7=new WechaIndexAirlines("SC","../airlinesflights/airlinesflights?airline_id=sc","https://www.potucs.com/wechat/airline/sc.png","南方航空");
        WechaIndexAirlines A8=new WechaIndexAirlines("ZH","../airlinesflights/airlinesflights?airline_id=zh","https://www.potucs.com/wechat/airline/zh.png","南方航空");
        WechaIndexAirlines A9=new WechaIndexAirlines("9C","../airlinesflights/airlinesflights?airline_id=9c","https://www.potucs.com/wechat/airline/9c.png","南方航空");
        WechaIndexAirlines A10=new WechaIndexAirlines("HO","../airlinesflights/airlinesflights?airline_id=ho","https://www.potucs.com/wechat/airline/ho.png","南方航空");
        WechaIndexAirlines A11=new WechaIndexAirlines("DZ","../airlinesflights/airlinesflights?airline_id=dz","https://www.potucs.com/wechat/airline/dz.png","南方航空");
        WechaIndexAirlines A12=new WechaIndexAirlines("8L","../airlinesflights/airlinesflights?airline_id=8l","https://www.potucs.com/wechat/airline/8l.png","南方航空");
        WechaIndexAirlines A13=new WechaIndexAirlines("KN","../airlinesflights/airlinesflights?airline_id=kn","https://www.potucs.com/wechat/airline/kn.png","南方航空");
        WechaIndexAirlines A14=new WechaIndexAirlines("JD","../airlinesflights/airlinesflights?airline_id=jd","https://www.potucs.com/wechat/airline/jd.png","南方航空");
        WechaIndexAirlines A15=new WechaIndexAirlines("GJ","../airlinesflights/airlinesflights?airline_id=gj","https://www.potucs.com/wechat/airline/gj.png","南方航空");
        WechaIndexAirlines A16=new WechaIndexAirlines("GS","../airlinesflights/airlinesflights?airline_id=gs","https://www.potucs.com/wechat/airline/gs.png","南方航空");
        WechaIndexAirlines A17=new WechaIndexAirlines("BK","../airlinesflights/airlinesflights?airline_id=bk","https://www.potucs.com/wechat/airline/bk.png","南方航空");
        WechaIndexAirlines A18=new WechaIndexAirlines("DR","../airlinesflights/airlinesflights?airline_id=dr","https://www.potucs.com/wechat/airline/dr.png","南方航空");
        WechaIndexAirlines A19=new WechaIndexAirlines("QW","../airlinesflights/airlinesflights?airline_id=qw","https://www.potucs.com/wechat/airline/qw.png","南方航空");
        WechaIndexAirlines A20=new WechaIndexAirlines("EU","../airlinesflights/airlinesflights?airline_id=eu","https://www.potucs.com/wechat/airline/eu.png","南方航空");
        WechaIndexAirlines A21=new WechaIndexAirlines("NS","../airlinesflights/airlinesflights?airline_id=ns","https://www.potucs.com/wechat/airline/ns.png","南方航空");
        WechaIndexAirlines A22=new WechaIndexAirlines("TV","../airlinesflights/airlinesflights?airline_id=tv","https://www.potucs.com/wechat/airline/tv.png","南方航空");
        WechaIndexAirlines A23=new WechaIndexAirlines("PN","../airlinesflights/airlinesflights?airline_id=pn","https://www.potucs.com/wechat/airline/pn.png","南方航空");
        WechaIndexAirlines A24=new WechaIndexAirlines("KY","../airlinesflights/airlinesflights?airline_id=ky","https://www.potucs.com/wechat/airline/ky.png","南方航空");
        map.put("A1",A1);
        map.put("A2",A2);
        map.put("A3",A3);
        map.put("A4",A4);
        map.put("A5",A5);
        map.put("A6",A6);
        map.put("A7",A7);
        map.put("A8",A8);
        map.put("A9",A9);
        map.put("A10",A10);
        map.put("A11",A11);
        map.put("A12",A12);
        map.put("A13",A13);
        map.put("A14",A14);
        map.put("A15",A15);
        map.put("A16",A16);
        map.put("A17",A17);
        map.put("A18",A18);
        map.put("A19",A19);
        map.put("A20",A20);
        map.put("A21",A21);
        map.put("A22",A22);
        map.put("A23",A23);
        map.put("A24",A24);
        return map;
    }
}
