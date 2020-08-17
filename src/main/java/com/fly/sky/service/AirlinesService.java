package com.fly.sky.service;


import com.fly.sky.condition.AirlineCondition;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Airlines;
import com.fly.sky.domain.Airport;
import com.fly.sky.vo.AirlinesDetail;
import com.fly.sky.vo.WechaIndexAirlines;

import java.util.List;
import java.util.Map;

/**
 * @Auther wangzekun
 * @Date 2020/7/22 09:52
 * @Description
 */


public interface AirlinesService {


    List<Airlines> findAllAirlines(AirlineCondition condition);

    Map<String, WechaIndexAirlines> wechatIndexAirlines(AirlineCondition condition);


    Airlines findAirlinesById(Integer id);

    List<Airlines> selectAirlineListByAirlinesCodeList(List airlinesCodeList);

    AirlinesDetail findFlightsAndAirportsByAirlines(FlightCondition condition);
}
