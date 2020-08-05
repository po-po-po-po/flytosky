package com.fly.sky.controller;

import com.fly.sky.condition.AirwayCondition;
import com.fly.sky.domain.Airway;
import com.fly.sky.service.AirwayService;
import com.fly.sky.util.JsonUtil;
import com.fly.sky.util.PagedList;
import com.fly.sky.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:56
 * @Description
 */

@RestController
@RequestMapping("/airway")
//@Api用于controller类上，说明该类的作用
@Api(tags = "航线接口")
@Slf4j
public class AirwayController {

    @Resource
    private AirwayService airwayService;

    @PostMapping("findAllAirways")
    //@ApiOperation：用在controller的方法上，用来说明方法用途、作用
    @ApiOperation(value = "查询航线列表", notes = "查询航线列表")
    //@ApiImplicitParam：用来给方法入参增加说明
    public ResponseResult<PagedList<Airway>> findAllAirways(@RequestBody AirwayCondition condition){
        String logTitle = "=查询航线列表=";
        log.info("{} - 参数：findAllAirways={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<PagedList<Airway>> responseResult = new ResponseResult<>();
        responseResult.setData(airwayService.findAllAirways(condition));
        return responseResult;
    }


}
