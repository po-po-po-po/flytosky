package com.fly.sky.repository;


import com.fly.sky.condition.AirportCondition;
import com.fly.sky.condition.AirwayCondition;
import com.fly.sky.domain.Airport;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:51
 * @Description
 */

public interface AirportRepository {

    List<Airport> findAirportsByCondition(AirportCondition condition);

    Airport findAirportById(Integer id);

    void insertAirport(Airport airport);

    Airport findAirportByName(String airportName);

    Airport findAirportByCode(String airportCode);

    List<Airport> findAirwaysDestinationAndAirportByCondition(AirportCondition airportCondition);
}
