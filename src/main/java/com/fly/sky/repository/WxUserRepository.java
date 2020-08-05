package com.fly.sky.repository;


import com.fly.sky.condition.AirportCondition;
import com.fly.sky.condition.WxUserCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.WxUser;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:51
 * @Description
 */

public interface WxUserRepository {


    void insertWxUser(WxUserCondition wxUser);

    WxUser selectUserByOpenId(String openId);

}
