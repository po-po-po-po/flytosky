package com.fly.sky.repository;


import com.fly.sky.condition.AirportCondition;
import com.fly.sky.condition.WxMessageCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.WxMessage;
import com.fly.sky.domain.WxUser;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:51
 * @Description
 */

public interface WxMessageRepository {


    void insertWxMessage(WxMessage wxMessage);

    List<WxMessage> findWxMessageByCondition(WxMessageCondition condition);

}
