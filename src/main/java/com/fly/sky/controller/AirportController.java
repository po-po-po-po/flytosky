package com.fly.sky.controller;

import com.fasterxml.jackson.databind.util.BeanUtil;
import com.fly.sky.condition.AirportCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.exceptions.BusinessCode;
import com.fly.sky.service.AirportService;
import com.fly.sky.util.JsonUtil;
import com.fly.sky.util.PagedList;
import com.fly.sky.util.ResponseResult;
import com.fly.sky.vo.AirportDetail;
import com.fly.sky.vo.AirportVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:56
 * @Description
 */

@RestController
@RequestMapping("/airport")
//@Api用于controller类上，说明该类的作用
@Api(tags = "机场接口")
@Slf4j
public class AirportController {

    @Resource
    private AirportService airportService;

    @PostMapping("findAllAirport")
    //@ApiOperation：用在controller的方法上，用来说明方法用途、作用
    @ApiOperation(value = "查询机场列表", notes = "查询机场列表")
    //@ApiImplicitParam：用来给方法入参增加说明
    public ResponseResult<PagedList<AirportVo>> findAllAirport(@RequestBody AirportCondition condition){
        String logTitle = "=查询机场列表=";
        log.info("{} - 参数：findAllAirport={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<PagedList<AirportVo>> responseResult = new ResponseResult<>();
        //替换掉机场二字
        String search=condition.getSearch();
        if(StringUtils.isNotEmpty(condition.getSearch())){
            search=search.replace("机场","");
            condition.setSearch(search);
        }
        responseResult.setData(airportService.findAllAirport(condition));
        return responseResult;
    }



    @PostMapping("findAirportById/{id}")
    @ApiOperation(value = "根据主键查询机场信息", notes = "根据主键查询机场信息")
    @ApiResponses({@ApiResponse(code = BusinessCode.CODE_OK, message = "根据主键查询机场信息"),
            @ApiResponse(code = BusinessCode.CODE_1003, message = "机场id为空")})
    public Airport findAirportById(@PathVariable(value = "id") Integer id){
        return airportService.findAirportById(id);
    }


    @PostMapping("findAirportDetail/{id}")
    @ApiOperation(value = "根据主键查询机场详情信息", notes = "根据主键查询机场详情信息")
    @ApiResponses({@ApiResponse(code = BusinessCode.CODE_OK, message = "根据主键查询机场详情信息"),
            @ApiResponse(code = BusinessCode.CODE_1003, message = "机场id为空")})
    public AirportDetail findAirportDetail(@PathVariable(value = "id") Integer id){
        String logTitle = "=根据主键查询机场详情信息=";
        log.info("{} - 参数：findAirportDetail={}", logTitle, JsonUtil.toJSONString(id));
        AirportDetail detail=new AirportDetail();
        Airport airport=airportService.findAirportById(id);
        //目标机场
        detail.setAirport(airport);
        AirportCondition airportCondition=new AirportCondition();
        BeanUtils.copyProperties(airport,airportCondition);
        airportCondition.setSearch("");
        //默认查询400条
        airportCondition.setPageSize(400);
        //可飞往目的地机场
        PagedList<Airport> airportList= airportService.findAirportDetail(airportCondition);
        detail.setAirportsList(airportList);
        return detail;
    }


    @PostMapping("findAirwaysDestination")
    @ApiOperation(value = "查询机场飞往目的地信息", notes = "查询机场飞往目的地信息")
    public ResponseResult<PagedList<Airport>> findAirwaysDestination(@RequestBody AirportCondition condition){
        String logTitle = "=查询机场列表=";
        log.info("{} - 参数：findAirwaysDestination={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<PagedList<Airport>> responseResult = new ResponseResult<>();
        responseResult.setData(airportService.findAirportDetail(condition));
        return responseResult;
    }




    @PostMapping(value="saveAirport",produces = MediaType.APPLICATION_JSON_VALUE)
    public void saveAirport(@RequestBody Airport airport){
       airportService.saveAirport(airport);
    }

}
