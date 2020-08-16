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
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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
}
