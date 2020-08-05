package com.fly.sky.service;


import com.fly.sky.condition.WxMessageCondition;
import com.fly.sky.domain.WxMessage;
import com.fly.sky.domain.WxUser;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/22 09:52
 * @Description
 */


public interface WxMessageService {



    void insertWxMessage(WxMessage wxMessage);

    List<WxMessage> findWxMessageByCondition(WxMessageCondition condition);

}
