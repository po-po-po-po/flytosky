package com.fly.sky.service.impl;


import com.fly.sky.condition.FlightCondition;
import com.fly.sky.condition.UserFlightCondition;
import com.fly.sky.domain.Flight;
import com.fly.sky.domain.UserFlight;
import com.fly.sky.domain.WxUser;
import com.fly.sky.enums.AirlinesEnum;
import com.fly.sky.pythons.IpPortUtil;
import com.fly.sky.pythons.XcFlightUtil;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.repository.UserFlightRepository;
import com.fly.sky.repository.WxUserRepository;
import com.fly.sky.service.FlightService;
import com.fly.sky.service.UserFlightService;
import com.fly.sky.service.WxUserService;
import com.fly.sky.util.OpenidUtil;
import com.fly.sky.util.PagedList;
import com.fly.sky.vo.FlightDetail;
import com.fly.sky.vo.UserFlightDetail;
import com.fly.sky.vo.UserFlightVo;
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
    @Resource
    FlightRepository flightRepository;
    @Resource
    WxUserRepository wxUserRepository;

    @Override
    public UserFlightDetail findUserFlightsByCondition(UserFlightCondition condition) {
        UserFlightDetail userFlightDetail=new  UserFlightDetail();
        List<UserFlightVo> userFlightVoList=userFlightRepository.findUserFlightsByCondition(condition);
        userFlightDetail.setUserFlightVoList(userFlightVoList);
        userFlightDetail.setCitiesNo(userFlightRepository.citiesNo(condition));
        userFlightDetail.setFlightsNo(userFlightRepository.flightsNo(condition));
        WxUser user= wxUserRepository.selectUserByOpenId(condition.getOpenid());
        userFlightDetail.setWxUser(user);
        return userFlightDetail;
    }

    @Override
    public void insertUserFlights(UserFlightCondition condition) {
        if(StringUtils.isNotEmpty(condition.getFlightNo())){
            condition.setFlightNo(condition.getFlightNo().toUpperCase());
            //根据航班号查询航班起飞时间和到达时间
            Flight flight= flightRepository.findFlightOne(condition);
            if(null==flight){
                condition.setFlightStartTime("00:00");
                condition.setFlightEndTime("24:00");
            }else{
                condition.setFlightStartTime(flight.getFlightDate().substring(0,5));
                condition.setFlightEndTime(flight.getFlightDate().substring(6));
            }
        }
         userFlightRepository.insertUserFlights(condition);
    }
}
