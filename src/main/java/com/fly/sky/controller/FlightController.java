package com.fly.sky.controller;

import com.fly.sky.condition.AirwayCondition;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Airlines;
import com.fly.sky.domain.Airway;
import com.fly.sky.domain.Flight;
import com.fly.sky.service.AirlinesService;
import com.fly.sky.service.AirwayService;
import com.fly.sky.service.FlightService;
import com.fly.sky.util.JsonUtil;
import com.fly.sky.util.PagedList;
import com.fly.sky.util.ResponseResult;
import com.fly.sky.vo.FlightDetail;
import com.fly.sky.vo.FlightList;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:56
 * @Description
 */

@RestController
@RequestMapping("/flight")
//@Api用于controller类上，说明该类的作用
@Api(tags = "航班接口")
@Slf4j
public class FlightController {

    @Resource
    private FlightService flightService;

    @Resource
    private AirwayService airwayService;

    @Resource
    private AirlinesService airlinesService;


    @PostMapping("findAllFlights")
    //@ApiOperation：用在controller的方法上，用来说明方法用途、作用
    @ApiOperation(value = "查询航班列表", notes = "查询航班列表")
    //@ApiImplicitParam：用来给方法入参增加说明
    public ResponseResult<PagedList<Flight>> findAllFlights(@RequestBody FlightCondition condition){
        String logTitle = "=查询航班列表=";
        log.info("{} - 参数：findAllFlights={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<PagedList<Flight>> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findAllFlights(condition));
        return responseResult;
    }


    @PostMapping("findAllFlightsByAirline")
    @ApiOperation(value = "根据航线查询航班信息", notes = "根据航线查询航班信息")
    //@ApiImplicitParam：用来给方法入参增加说明
    public ResponseResult<FlightList> findAllFlightsByAirline(@RequestBody FlightCondition condition){
        String logTitle = "=根据航线查询航班信息=";
        log.info("{} - 参数：findAllFlightsByAirline={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<FlightList> responseResult = new ResponseResult<>();
        FlightList flightList=new FlightList();
        List<FlightDetail> flightDetailList=flightService.findAllFlightsByAirline(condition);
        flightList.setFlightList(flightDetailList);
        //获取航空公司信息
        List<String> airlinesCodeList=flightDetailList.stream().map(FlightDetail::getAirlinesCode).collect(Collectors.toList()).stream().distinct().collect(Collectors.toList());
        if(!CollectionUtils.isEmpty(airlinesCodeList)){
            List<Airlines> airlinesList=airlinesService.selectAirlineListByAirlinesCodeList(airlinesCodeList);
            flightList.setAirlinesList(airlinesList);
        }
        AirwayCondition airwayCondition=new AirwayCondition();
        airwayCondition.setAirwayNameStart(condition.getFlightNameStart());
        airwayCondition.setAirwayNameEnd(condition.getFlightNameEnd());
        Airway airway=airwayService.findAirwaysByStartAndEnd(airwayCondition);
        flightList.setAirway(airway);
        responseResult.setData(flightList);
        return responseResult;
    }
}
