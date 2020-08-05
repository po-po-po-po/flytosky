package com.fly.sky.service;


import com.fly.sky.condition.AirportCondition;
import com.fly.sky.condition.LoginCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.util.PagedList;

/**
 * @Auther wangzekun
 * @Date 2020/7/22 09:52
 * @Description
 */


public interface LoginService {


    Boolean login(LoginCondition condition);


}
