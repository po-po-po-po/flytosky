package com.fly.sky.service;


import com.fly.sky.condition.WxUserCondition;
import com.fly.sky.domain.WxUser;


/**
 * @Auther wangzekun
 * @Date 2020/7/22 09:52
 * @Description
 */


public interface WxUserService {

    void updateWxUserTime(String openId);

    void saveWxUser(WxUserCondition wxUser);

    WxUser selectUserByOpenId(String openId);

}
