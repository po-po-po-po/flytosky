package com.fly.sky.controller;

import com.fly.sky.condition.ActivityCondition;
import com.fly.sky.condition.AirlineCondition;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Activity;
import com.fly.sky.domain.Airlines;
import com.fly.sky.exceptions.BusinessCode;
import com.fly.sky.service.ActivityService;
import com.fly.sky.service.AirlinesService;
import com.fly.sky.util.JsonUtil;
import com.fly.sky.util.ResponseResult;
import com.fly.sky.vo.AirlinesDetail;
import com.fly.sky.vo.AirlinesVo;
import com.fly.sky.vo.WechaIndexAirlines;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @Auther wangzekun
 * @Date 2020/9/9 22:56
 * @Description
 */

@RestController
@RequestMapping("/activity")
@Api(tags = "活动接口")
@Slf4j
public class ActivityController {

    @Resource
    private ActivityService activityService;

    @PostMapping("activityList")
    @ApiOperation(value = "航司活动接口列表 ", notes = "航司活动接口列表")
    public ResponseResult<List<Activity>> activityList(@RequestBody ActivityCondition condition){
        String logTitle = "=航司活动接口列表=";
        log.info("{} - 参数：activityList={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<List<Activity>> responseResult = new ResponseResult<>();
        responseResult.setData(activityService.findActivityList(condition));
        return responseResult;
    }


    @PostMapping("activityDetail")
    @ApiOperation(value = "航司活动接口详情 ", notes = "航司活动接口详情")
    public ResponseResult<Activity> activityDetail(@RequestBody ActivityCondition condition){
        String logTitle = "=航司活动接口详情=";
        log.info("{} - 参数：activityDetail={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<Activity> responseResult = new ResponseResult<>();
        responseResult.setData(activityService.findActivityDetail(condition));
        return responseResult;
    }


}
