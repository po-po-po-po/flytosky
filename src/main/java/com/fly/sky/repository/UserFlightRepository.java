package com.fly.sky.repository;


import com.fly.sky.condition.FlightCondition;
import com.fly.sky.condition.UserFlightCondition;
import com.fly.sky.domain.Flight;
import com.fly.sky.domain.UserFlight;
import com.fly.sky.vo.UserFlightDetail;
import com.fly.sky.vo.UserFlightVo;


import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:51
 * @Description
 */

public interface UserFlightRepository {
    List<UserFlightVo> findUserFlightsByCondition(UserFlightCondition condition);

    void insertUserFlights(UserFlightCondition condition);

    UserFlightDetail flightsNo(UserFlightCondition condition);

    UserFlightDetail citiesNo(UserFlightCondition condition);

    void deleteUserflightByID(UserFlightCondition condition);

    UserFlightVo findUserFlightById(UserFlightCondition condition);

}
