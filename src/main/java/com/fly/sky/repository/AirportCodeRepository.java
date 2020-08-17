package com.fly.sky.repository;


import com.fly.sky.condition.AirportCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.AirportCode;
import com.fly.sky.domain.Flight;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:51
 * @Description
 */

public interface AirportCodeRepository {

    List<AirportCode> findAirportCode(AirportCode airportCode);


    void insertAirportCode(AirportCode airportCode);

    void updateAirportCode(AirportCode airportCode);

}
