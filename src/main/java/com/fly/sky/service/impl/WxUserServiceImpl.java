package com.fly.sky.service.impl;


import com.alibaba.fastjson.JSONObject;
import com.fly.sky.condition.WxUserCondition;
import com.fly.sky.domain.WxUser;
import com.fly.sky.repository.WxUserRepository;
import com.fly.sky.service.WxUserService;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:55
 * @Description
 */

@Service("wxUserService")
public class WxUserServiceImpl implements WxUserService {

    @Resource
    WxUserRepository wxUserRepository;

    public void saveWxUser(WxUserCondition wxUser){
        String gender= "1".equals(wxUser.getGender()) ? "男" : "女";
        wxUser.setGender(gender);
        wxUser.setCreateTime(new Date());
        wxUserRepository.insertWxUser(wxUser);
    }

    public WxUser selectUserByOpenId(String openId){
        return wxUserRepository.selectUserByOpenId(openId);
    };

}
