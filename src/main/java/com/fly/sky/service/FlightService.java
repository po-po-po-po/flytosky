package com.fly.sky.service;


import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Flight;
import com.fly.sky.util.PagedList;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/22 09:52
 * @Description
 */


public interface FlightService {


    PagedList<Flight> findAllFlights(FlightCondition condition);

    List<Flight> findAllFlightsByAirline(FlightCondition condition);

}
