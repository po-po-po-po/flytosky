package com.fly.sky.service;


import com.fly.sky.condition.FlightCondition;
import com.fly.sky.condition.UserFlightCondition;
import com.fly.sky.domain.Flight;
import com.fly.sky.domain.UserFlight;
import com.fly.sky.util.PagedList;
import com.fly.sky.vo.FlightDetail;
import com.fly.sky.vo.UserFlightDetail;
import com.fly.sky.vo.UserFlightVo;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/22 09:52
 * @Description
 */


public interface UserFlightService {

    UserFlightDetail findUserFlightsByCondition(UserFlightCondition condition);

    void insertUserFlights(UserFlightCondition condition);

    void deleteUserflight(UserFlightCondition condition);

    UserFlightVo findUserFlightById(UserFlightCondition condition);
}
