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
import org.springframework.util.StringUtils;
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
        //处理flightRequency为0的问题
        if(!StringUtils.isEmpty(condition.getFlightRequency())&&"0".equals(condition.getFlightRequency())){
            condition.setFlightRequency("7");
        }
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
        airwayCondition.setAirwayNameStart(condition.getAirportNameStart());
        airwayCondition.setAirwayNameEnd(condition.getAirportNameEnd());
        Airway airway=airwayService.findAirwaysByStartAndEnd(airwayCondition);
        flightList.setAirway(airway);
        responseResult.setData(flightList);
        return responseResult;
    }

    @PostMapping("findMUFlights6")
    @ApiOperation(value = "查询东航周六航班", notes = "查询东航周六航班")
    public ResponseResult<PagedList<Flight>> findMUFlights6(@RequestBody FlightCondition condition){
        String logTitle = "=findMUFlights6=";
        log.info("{} - 参数：findMUFlights6={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<PagedList<Flight>> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findMUFlights6(condition));
        return responseResult;
    }

    @PostMapping("findMUFlights7")
    @ApiOperation(value = "查询东航周日航班", notes = "查询东航周日航班")
    public ResponseResult<PagedList<Flight>> findMUFlights7(@RequestBody FlightCondition condition){
        String logTitle = "=findMUFlights6=";
        log.info("{} - 参数：findMUFlights6={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<PagedList<Flight>> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findMUFlights7(condition));
        return responseResult;
    }

    @PostMapping("findMUFlights8BEFORE")
    @ApiOperation(value = "查询航班列表", notes = "查询航班列表")
    public ResponseResult<PagedList<Flight>> findMUFlights8BEFORE(@RequestBody FlightCondition condition){
        String logTitle = "=findMUFlights8BEFORE=";
        log.info("{} - 参数：findMUFlights8BEFORE={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<PagedList<Flight>> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findMUFlights8BEFORE(condition));
        return responseResult;
    }

    @PostMapping("findMUFlights8AFTER")
    @ApiOperation(value = "查询航班列表", notes = "查询航班列表")
    public ResponseResult<PagedList<Flight>> findMUFlights8AFTER(@RequestBody FlightCondition condition){
        String logTitle = "=findMUFlights8AFTER=";
        log.info("{} - 参数：findMUFlights8AFTER={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<PagedList<Flight>> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findMUFlights8AFTER(condition));
        return responseResult;
    }

    @PostMapping("findMUFlightsXIYU")
    @ApiOperation(value = "查询航班列表", notes = "查询航班列表")
    public ResponseResult<PagedList<Flight>> findMUFlightsXIYU(@RequestBody FlightCondition condition){
        String logTitle = "=findMUFlightsXIYU=";
        log.info("{} - 参数：findMUFlightsXIYU={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<PagedList<Flight>> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findMUFlightsXIYU(condition));
        return responseResult;
    }

    @PostMapping("findMUFlightsDAWAN")
    @ApiOperation(value = "查询航班列表", notes = "查询航班列表")
    public ResponseResult<PagedList<Flight>> findMUFlightsDAWAN(@RequestBody FlightCondition condition){
        String logTitle = "=findMUFlightsDAWAN=";
        log.info("{} - 参数：findMUFlightsDAWAN={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<PagedList<Flight>> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findMUFlightsDAWAN(condition));
        return responseResult;
    }
}
