package com.fly.sky.controller;

import com.fly.sky.condition.AirlineCondition;
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
import com.fly.sky.util.WeekUtil;
import com.fly.sky.vo.AirlinesDetail;
import com.fly.sky.vo.AirportDetail;
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
        if(StringUtils.isEmpty(condition.getAirportNameStartCode())&&StringUtils.isEmpty(condition.getAirportNameEndCode())){
            condition.setAirportNameStartCode("SHA");
        }
        ResponseResult<PagedList<Flight>> responseResult = new ResponseResult<>();
        if(CollectionUtils.isEmpty(flightService.findMUFlights6(condition).getData())){

        }else{
            responseResult.setData(flightService.findMUFlights6(condition));
        }

        return responseResult;
    }

    @PostMapping("findMUFlights7")
    @ApiOperation(value = "查询东航周日航班", notes = "查询东航周日航班")
    public ResponseResult<PagedList<Flight>> findMUFlights7(@RequestBody FlightCondition condition){
        String logTitle = "=findMUFlights7=";
        log.info("{} - 参数：findMUFlights7={}", logTitle, JsonUtil.toJSONString(condition));
        if(StringUtils.isEmpty(condition.getAirportNameStartCode())&&StringUtils.isEmpty(condition.getAirportNameEndCode())){
            condition.setAirportNameStartCode("SHA");
        }
        ResponseResult<PagedList<Flight>> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findMUFlights7(condition));
        return responseResult;
    }

    @PostMapping("findMUFlights67")
    @ApiOperation(value = "查询东航周六航班", notes = "查询东航周六航班")
    public ResponseResult<PagedList<Flight>> findMUFlights67(@RequestBody FlightCondition condition){
        String logTitle = "=findMUFlights67=";
        log.info("{} - 参数：findMUFlights67={}", logTitle, JsonUtil.toJSONString(condition));

        ResponseResult<PagedList<Flight>> responseResult = new ResponseResult<>();
        //处理航班周期问题
        if(!StringUtils.isEmpty(condition.getFlightRequency())&&condition.getFlightRequency().contains("周")){
            condition.setFlightRequency( WeekUtil.getWeekCode(condition.getFlightRequency()));
        }
        if("6".equals(condition.getFlightRequency())){
            responseResult.setData(flightService.findMUFlights7(condition));
        }else if("7".equals(condition.getFlightRequency())){
            responseResult.setData(flightService.findMUFlights6(condition));
        }
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

    @PostMapping("find9CFlightsZHE")
    @ApiOperation(value = "查询航班列表", notes = "查询航班列表")
    public ResponseResult<List<Flight>> find9CFlightsZHE(@RequestBody FlightCondition condition){
        String logTitle = "=find9CFlightsZHE=";
        log.info("{} - 参数：find9CFlights浙={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<List<Flight>> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.find9CFlightsZHE(condition));
        return responseResult;
    }

    @PostMapping("findFlightsForSUIXINFEI")
    @ApiOperation(value = "查询航班列表", notes = "查询航班列表")
    public ResponseResult<PagedList<Flight>> findFlightsForSUIXINFEI(@RequestBody FlightCondition condition){
        //处理航班周期问题
        if(!StringUtils.isEmpty(condition.getFlightRequency())&&condition.getFlightRequency().contains("周")){
            condition.setFlightRequency( WeekUtil.getWeekCode(condition.getFlightRequency()));
        }
        //处理不限问题航空公司
        if(!StringUtils.isEmpty(condition.getAirlinesCode())&&"1".equals(condition.getAirlinesCode())){
            condition.setAirlinesCode("");
        }
        String logTitle = "=查询航班列表=";
        log.info("{} - 参数：findFlightsForSUIXINFEI={}", logTitle, JsonUtil.toJSONString(condition));
        if(StringUtils.isEmpty(condition.getAirportNameStartCode())&&StringUtils.isEmpty(condition.getAirportNameEndCode())){
           condition.setPageSize(200);
        }
        ResponseResult<PagedList<Flight>> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findFlightsForSUIXINFEI(condition));
        return responseResult;
    }


    @PostMapping("findFlightsForSUIXINFEIHX")
    @ApiOperation(value = "查询航线信息", notes = "查询航线信息")
    public ResponseResult<AirlinesDetail> findFlightsForSUIXINFEIHX(@RequestBody FlightCondition condition){
        //处理不限问题航空公司
        if(StringUtils.isEmpty(condition.getAirlinesCode())){
            condition.setAirlinesCode("MU");
        }
        FlightCondition condition1=new FlightCondition();
        //处理时间查询问题
        if(!StringUtils.isEmpty(condition.getFlightDateStart())){
            String dates[] =condition.getFlightDateStart().split("-");
            condition.setFlightDateStart(dates[0]);
            condition.setFlightDateEnd(dates[1]);
            condition1.setFlightDateStart(dates[0]);
            condition1.setFlightDateEnd(dates[1]);
        }
        String logTitle = "=查询航线信息=";
        log.info("{} - 参数：findFlightsForSUIXINFEIHX={}", logTitle, JsonUtil.toJSONString(condition));
        AirlinesDetail airlinesDetail=new AirlinesDetail();

        //如果出发机场和到达机场都是空 那就指定一个
        if(StringUtils.isEmpty(condition.getAirportNameStartCode())&& StringUtils.isEmpty(condition.getAirportNameEndCode())){
            condition.setAirportNameStartCode("SHA");
        }

        //查询航司的出发机场列表
        //airlinesDetail.setAirportStartList(flightService.findStartHX(condition));
        airlinesDetail.setAirportStartList(flightService.findAirportsForStartAndEnd(condition));
        //查询航司的到达机场列表
        //airlinesDetail.setAirportEndList(flightService.findEndHX(condition));
        airlinesDetail.setAirportEndList(flightService.findAirportsForStartAndEnd(condition));
        //查询航空公司列表
        airlinesDetail.setAirlinesList(airlinesService.findAllAirlines(new AirlineCondition()));
        //航线列表
        airlinesDetail.setAirwayList(flightService.findHX(condition));
        //航空公司信息
        airlinesDetail.setAirlines(airlinesService.findAirlinesByCode(condition.getAirlinesCode()));
        //查询条件
        airlinesDetail.setFlightCondition(condition1);
        ResponseResult<AirlinesDetail> responseResult = new ResponseResult<>();
        responseResult.setData(airlinesDetail);
        return responseResult;
    }



    @PostMapping("findHX2HB")
    @ApiOperation(value = "查询航线TO航班列表", notes = "查询航线TO航班列表")
    public ResponseResult<FlightList> findHX2HB(@RequestBody FlightCondition condition){

        String logTitle = "=查询航线TO航班列表=";
        log.info("{} - 参数：查询航线TO航班列表={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<FlightList> responseResult = new ResponseResult<>();
        if("null".equals(condition.getFlightDateStart())){
            condition.setFlightDateStart("");
        }
        if("null".equals(condition.getFlightDateEnd())){
            condition.setFlightDateEnd("");
        }
        if(!StringUtils.isEmpty(condition.getFlightRequency())&&"0".equals(condition.getFlightRequency())){
            condition.setFlightRequency("");
        }

        responseResult.setData(flightService.findHX2HB(condition));
        return responseResult;
    }


    @PostMapping("findAIRPORTSHB")
    @ApiOperation(value = "查询机场航班列表", notes = "查询机场航班列表")
    public ResponseResult<AirportDetail> findAIRPORTSHB(@RequestBody FlightCondition condition){
        String logTitle = "=查询机场航班列表=";
        log.info("{} - 参数：findAIRPORTSHB={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<AirportDetail> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findAIRPORTSHB(condition));
        return responseResult;
    }


    @PostMapping("findFlights67")
    @ApiOperation(value = "查询东航周末随心飞", notes = "查询东航周末随心飞")
    public ResponseResult<AirlinesDetail> findFlights67(@RequestBody FlightCondition condition){
        String logTitle = "=查询东航周末随心飞=";
        log.info("{} - 参数：findFlights67={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<AirlinesDetail> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findFlights67(condition));
        return responseResult;
    }


    @PostMapping("findFlights820")
    @ApiOperation(value = "查询东航早晚随心飞", notes = "查询东航早晚随心飞")
    public ResponseResult<AirlinesDetail> findFlights820(@RequestBody FlightCondition condition){
        String logTitle = "=查询东航早晚随心飞=";
        log.info("{} - 参数：findFlights820={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<AirlinesDetail> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findFlights820(condition));
        return responseResult;
    }


    @PostMapping("findFlightsForSUIXINFEIZW")
    @ApiOperation(value = "查询早晚随心飞航班列表", notes = "查询早晚随心飞航班列表")
    public ResponseResult<PagedList<Flight>> findFlightsForSUIXINFEIZW(@RequestBody FlightCondition condition){
        //处理航班周期问题
        if(StringUtils.isEmpty(condition.getFlightRequency())||"7".equals(condition.getFlightRequency())){
            condition.setFlightRequency("1");
        }
        //处理不限问题航空公司
        if(!StringUtils.isEmpty(condition.getAirlinesCode())&&"1".equals(condition.getAirlinesCode())){
            condition.setAirlinesCode("");
        }
        String logTitle = "=查询早晚随心飞航班列表=";
        log.info("{} - 参数：findFlightsForSUIXINFEIZW={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<PagedList<Flight>> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findFlightsForSUIXINFEIZW(condition));
        return responseResult;
    }


    @PostMapping("findFlightsCQ")
    @ApiOperation(value = "查询春秋区域随心飞", notes = "查询春秋区域随心飞")
    public ResponseResult<AirlinesDetail> findFlightsCQ(@RequestBody FlightCondition condition){
        String logTitle = "=查询春秋区域随心飞=";
        log.info("{} - 参数：findFlightsCQ={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<AirlinesDetail> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findFlightsCQ(condition));
        return responseResult;
    }

    @PostMapping("findFlightsForSUIXINFEICQ")
    @ApiOperation(value = "查询春秋区域随心飞航班列表", notes = "查询春秋区域随心飞航班列表")
    public ResponseResult<PagedList<Flight>> findFlightsForSUIXINFEICQ(@RequestBody FlightCondition condition){
        //处理航班周期问题
        if(StringUtils.isEmpty(condition.getFlightRequency())){
            condition.setFlightRequency("6");
        }
        condition.setAirlinesCode("9C");
        String logTitle = "=查询春秋区域随心飞航班列表=";
        log.info("{} - 参数：findFlightsForSUIXINFEICQ={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<PagedList<Flight>> responseResult = new ResponseResult<>();
        responseResult.setData(flightService.findFlightsForSUIXINFEICQ(condition));
        return responseResult;
    }
}
