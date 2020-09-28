package com.fly.sky.repository;


import com.fly.sky.condition.FlightCondition;
import com.fly.sky.condition.UserFlightCondition;
import com.fly.sky.domain.UserFlight;
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

    int flightsNo(UserFlightCondition condition);

    int citiesNo(UserFlightCondition condition);

}
