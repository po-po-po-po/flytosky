package com.fly.sky.service;


import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.Flight;
import com.fly.sky.util.PagedList;
import com.fly.sky.vo.AirlinesDetail;
import com.fly.sky.vo.AirportDetail;
import com.fly.sky.vo.FlightDetail;
import com.fly.sky.vo.FlightList;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/22 09:52
 * @Description
 */


public interface FlightService {


    PagedList<Flight> findAllFlights(FlightCondition condition);

    List<FlightDetail> findAllFlightsByAirline(FlightCondition condition);

    void synchronizeFeiChangzhunFlight(FlightCondition condition) throws Exception;

    PagedList<Flight> findMUFlights6(FlightCondition condition);
    PagedList<Flight> findMUFlights7(FlightCondition condition);
    PagedList<Flight> findMUFlights8BEFORE(FlightCondition condition);
    PagedList<Flight> findMUFlights8AFTER(FlightCondition condition);
    PagedList<Flight> findMUFlightsXIYU(FlightCondition condition);
    PagedList<Flight> findMUFlightsDAWAN(FlightCondition condition);
    List<Flight> find9CFlightsZHE(FlightCondition condition);


    PagedList<Flight> findFlightsForSUIXINFEI(FlightCondition condition);
    //出发机场  到达机场
    List<Airport> findStartHX(FlightCondition condition);
    List<Airport> findEndHX(FlightCondition condition);
    //航线
    List<FlightDetail> findHX(FlightCondition condition);

    List<Airport> findAirportsForStartAndEnd(FlightCondition condition);

    FlightList findHX2HB(FlightCondition condition);

    AirportDetail findAIRPORTSHB(FlightCondition condition);

    AirlinesDetail findFlights67(FlightCondition condition);

    AirlinesDetail findFlights820(FlightCondition condition);
}
