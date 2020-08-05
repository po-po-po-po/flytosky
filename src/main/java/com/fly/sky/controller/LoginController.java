package com.fly.sky.controller;

import com.fly.sky.condition.AirportCondition;
import com.fly.sky.condition.LoginCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.exceptions.BusinessCode;
import com.fly.sky.service.AirportService;
import com.fly.sky.service.LoginService;
import com.fly.sky.util.JsonUtil;
import com.fly.sky.util.PagedList;
import com.fly.sky.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 13:56
 * @Description
 */

@RestController
@RequestMapping("/login")
@Api(tags = "登录接口")
@Slf4j
public class LoginController {

    @Resource
    private LoginService loginService;

    @PostMapping("")
    //@ApiOperation：用在controller的方法上，用来说明方法用途、作用
    @ApiOperation(value = "登录后台管理系统", notes = "登录后台管理系统")
    public ResponseResult<Boolean> login(@RequestBody LoginCondition condition){
        String logTitle = "=登录后台管理系统=";
        log.info("{} - 参数：login={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<Boolean> responseResult = new ResponseResult<>();
        responseResult.setData(loginService.login(condition));
        log.info("登录结果"+loginService.login(condition));
        return responseResult;
    }

}
