package com.fly.sky.repository;


import com.fly.sky.condition.AirportCondition;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.Flight;
import com.fly.sky.vo.AirportVo;
import com.fly.sky.vo.FlightDetail;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:51
 * @Description
 */

public interface FlightRepository {
    List<Flight> findFlightsByCondition(FlightCondition condition);
    List<FlightDetail> findFlightsDetail(FlightCondition condition);
    List<Flight> findFlightsGroupByAirlineCode(AirportCondition condition);
    List<AirportVo> findFlightsGroupByFlightNameStart();
    List<Airport> findFlightsGroupByFlightNameStartByAirlinesCode(String airlinesCode);
    List<Airport> findFlightsGroupByFlightNameEndByAirlinesCode(String airlinesCode);
    List<FlightDetail> findFlightsAndAirlinesByCondition(FlightCondition condition);
    void updateFlightByCondition(FlightCondition condition);
    List<Flight> findFlightsForSynchronize(FlightCondition condition);
}
