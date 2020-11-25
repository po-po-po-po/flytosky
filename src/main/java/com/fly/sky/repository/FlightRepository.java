package com.fly.sky.repository;


import com.fly.sky.condition.AirportCondition;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.condition.UserFlightCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.Flight;
import com.fly.sky.util.PagedList;
import com.fly.sky.vo.AirportVo;
import com.fly.sky.vo.FlightDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

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
    List<Airport> findFlightsGroupByFlightNameStartByAirlinesCode(@Param(value="airlinesCode") String airlinesCode,@Param(value="sortId") Integer sortId);
    List<Airport> findFlightsGroupByFlightNameEndByAirlinesCode(@Param(value="airlinesCode") String airlinesCode,@Param(value="sortId") Integer sortId);
    List<FlightDetail> findFlightsAndAirlinesByCondition(FlightCondition condition);
    void updateFlightByCondition(FlightCondition condition);
    List<Flight> findFlightsForSynchronize(FlightCondition condition);
    void updateFlightFrequencyNotExist(String flightNo);
    void updateFlightFrequencyShareCode(String flightNo);
    void updateFlightFrequencyIp(String flightNo);
    void deleteFlightByFlightNo(String flightNo);
    void insertFlight(Flight flight);
    void updateAirportNameStartAndEnd(Flight flight);
    List<Flight> findFlightsGroupByAirportNameAndAirportNameEnd();
    Flight findFlightNoRepeat(String flightNo,String airportNameStartCode,String airportNameEndCode);
    Flight findFlightOne(UserFlightCondition condition);
    List<Airport> findFlightsGroupByAirportCode();
    List<FlightDetail> findFlightsAirwayNumberByAirlinesCode(FlightCondition flightCondition);


    //mu航班
    List<Flight> findMUFlights6(FlightCondition condition);
    List<Flight> findMUFlights7(FlightCondition condition);
    List<Flight> findMUFlights8BEFORE(FlightCondition condition);
    List<Flight> findMUFlights8AFTER(FlightCondition condition);
    List<Flight> findMUFlightsXIYU(FlightCondition condition);
    List<Flight> findMUFlightsDAWAN(FlightCondition condition);

    //春秋航空
    List<Flight> find9CFlightsZHE(FlightCondition condition);


    //所以随心飞
    List<Flight> findFlightsForSUIXINFEI(FlightCondition condition);



    //所以随心飞
    List<Airport> findStartHX(FlightCondition condition);


    //所以随心飞
    List<Airport> findEndHX(FlightCondition condition);

    //所以随心飞
    List<FlightDetail> findHX(FlightCondition condition);


    List<FlightDetail> findHX2HB(FlightCondition condition);

    List<FlightDetail> findAIRPORTSHB(FlightCondition condition);


    void deleteFlightByCode(String airportNameStartCode,String airportNameEndCode);
}
