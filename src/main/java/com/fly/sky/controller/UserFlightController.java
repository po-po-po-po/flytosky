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

    @PostMapping(value="saveUserflight")
    @ApiOperation(value = "保存用户航班信息", notes = "保存用户航班信息")
    public void saveUserflight(@RequestBody UserFlightCondition condition)  {
        String logTitle = "=保存用户航班信息=";
        log.info("{} - 参数：saveUserflight={}", logTitle, JsonUtil.toJSONString(condition));
        userFlightService.insertUserFlights(condition);
    }

    @PostMapping(value="findUserFlightsByCondition")
    @ApiOperation(value = "查询用户航班信息", notes = "查询用户航班信息")
    public ResponseResult<List<UserFlight>> findUserFlightsByCondition(@RequestBody UserFlightCondition condition)  {
        String logTitle = "=查询用户航班信息=";
        log.info("{} - 参数：findUserFlightsByCondition={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<List<UserFlight>> responseResult = new ResponseResult<>();
        responseResult.setData(userFlightService.findUserFlightsByCondition(condition));
        return responseResult;
    }
}