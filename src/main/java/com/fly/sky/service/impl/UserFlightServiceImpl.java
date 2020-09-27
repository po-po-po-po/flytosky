package com.fly.sky.service.impl;


import com.fly.sky.condition.FlightCondition;
import com.fly.sky.condition.UserFlightCondition;
import com.fly.sky.domain.Flight;
import com.fly.sky.domain.UserFlight;
import com.fly.sky.enums.AirlinesEnum;
import com.fly.sky.pythons.IpPortUtil;
import com.fly.sky.pythons.XcFlightUtil;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.repository.UserFlightRepository;
import com.fly.sky.service.FlightService;
import com.fly.sky.service.UserFlightService;
import com.fly.sky.util.PagedList;
import com.fly.sky.vo.FlightDetail;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;



@Service("userFlightService")
public class UserFlightServiceImpl implements UserFlightService {

    @Resource
    UserFlightRepository userFlightRepository;


    @Override
    public List<UserFlight> findUserFlightsByCondition(UserFlightCondition condition) {
        return userFlightRepository.findUserFlightsByCondition(condition);
    }

    @Override
    public void insertUserFlights(UserFlightCondition condition) {
         userFlightRepository.insertUserFlights(condition);
    }
}
