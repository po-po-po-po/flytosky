package com.fly.sky.controller;

import com.fly.sky.condition.ActivityCondition;
import com.fly.sky.condition.FlyCondition;
import com.fly.sky.domain.Activity;
import com.fly.sky.domain.Fly;
import com.fly.sky.service.ActivityService;
import com.fly.sky.service.FlyService;
import com.fly.sky.util.JsonUtil;
import com.fly.sky.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;



@RestController
@RequestMapping("/fly")
@Api(tags = "随心飞接口")
@Slf4j
public class FlyController {

    @Resource
    private FlyService flyService;

    @PostMapping("flyList")
    @ApiOperation(value = "随心飞接口列表 ", notes = "随心飞接口列表")
    public ResponseResult<List<Fly>> flyList(@RequestBody FlyCondition condition){
        String logTitle = "=航司随心飞接口列表=";
        log.info("{} - 参数：flyList={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<List<Fly>> responseResult = new ResponseResult<>();
        responseResult.setData(flyService.findFlyByCondition(condition));
        return responseResult;
    }


}
