package com.fly.sky.controller;

import com.fly.sky.condition.UserFlightCondition;
import com.fly.sky.condition.WxUserCondition;
import com.fly.sky.domain.UserFlight;
import com.fly.sky.domain.WxUser;
import com.fly.sky.service.UserFlightService;
import com.fly.sky.service.WxUserService;
import com.fly.sky.util.JsonUtil;
import com.fly.sky.util.OpenidUtil;
import com.fly.sky.util.ResponseResult;
import com.fly.sky.vo.FlightList;
import com.fly.sky.vo.UserFlightDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:56
 * @Description
 */

@RestController
@RequestMapping("/userflight")
@Api(tags = "用户接口")
@Slf4j
public class UserFlightController {

    @Resource
    private UserFlightService userFlightService;

    @Resource
    private WxUserService wxUserService;

    @PostMapping(value="saveUserflight")
    @ApiOperation(value = "保存用户航班信息", notes = "保存用户航班信息")
    public void saveUserflight(@RequestBody UserFlightCondition condition) throws Exception {
        String logTitle = "=保存用户航班信息=";
        log.info("{} - 参数：saveUserflight={}", logTitle, JsonUtil.toJSONString(condition));
        //获取openid
        String openId= OpenidUtil.getOpenid(
                condition.getCode(),
                null,
                null);
        condition.setOpenid(openId);
        userFlightService.insertUserFlights(condition);
    }

    @PostMapping(value="findUserFlightsByCondition")
    @ApiOperation(value = "查询用户航班信息", notes = "查询用户航班信息")
    public ResponseResult<UserFlightDetail> findUserFlightsByCondition(@RequestBody UserFlightCondition condition) throws Exception {
        String logTitle = "=查询用户航班信息=";
        log.info("{} - 参数：findUserFlightsByCondition={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<UserFlightDetail> responseResult = new ResponseResult<>();
        //获取openid
        String openId= OpenidUtil.getOpenid(
                condition.getCode(),
                null,
                null);
        condition.setOpenid(openId);
        WxUserCondition wxUserCondition=new WxUserCondition();
        //首先添加用户信息
        if(StringUtils.isEmpty(openId)){
            wxUserCondition.setAvatarUrl(condition.getAvatarUrl());
            wxUserCondition.setCity(condition.getCity());
            wxUserCondition.setCountry(condition.getCountry());
            wxUserCondition.setNickName(condition.getNickName());
            wxUserCondition.setGender(condition.getGender());
            wxUserCondition.setProvince(condition.getProvince());
            wxUserService.saveWxUser(wxUserCondition);
        }else{
            WxUser wxUser=wxUserService.selectUserByOpenId(openId);
            if(null==wxUser){
                wxUserCondition.setAvatarUrl(condition.getAvatarUrl());
                wxUserCondition.setCity(condition.getCity());
                wxUserCondition.setCountry(condition.getCountry());
                wxUserCondition.setNickName(condition.getNickName());
                wxUserCondition.setGender(condition.getGender());
                wxUserCondition.setProvince(condition.getProvince());
                wxUserCondition.setOpenId(openId);
                wxUserService.saveWxUser(wxUserCondition);
            }else{
                //修改时间
                wxUserService.updateWxUserTime(openId);
            }
        }
        responseResult.setData(userFlightService.findUserFlightsByCondition(condition));
        return responseResult;
    }
}
