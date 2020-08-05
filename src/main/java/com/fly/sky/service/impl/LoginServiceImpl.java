package com.fly.sky.service.impl;


import com.fly.sky.condition.AirportCondition;
import com.fly.sky.condition.LoginCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.exceptions.BusinessCode;
import com.fly.sky.exceptions.BusinessException;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.service.AirportService;
import com.fly.sky.service.LoginService;
import com.fly.sky.util.PagedList;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:55
 * @Description
 */

@Service("loginService")
public class LoginServiceImpl implements LoginService {


    public Boolean login(LoginCondition condition){
        Boolean res=Boolean.FALSE;
        if("po".equals(condition.getUserName())&&"11111111".equals(condition.getPassword())){
            res=Boolean.TRUE;
        }
        return res;
    }



}
