package com.fly.sky.controller;

import com.fly.sky.condition.AirlineCondition;
import com.fly.sky.condition.AirportCondition;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Airlines;
import com.fly.sky.domain.Airport;
import com.fly.sky.exceptions.BusinessCode;
import com.fly.sky.service.AirlinesService;
import com.fly.sky.service.AirportService;
import com.fly.sky.util.JsonUtil;
import com.fly.sky.util.PagedList;
import com.fly.sky.util.ResponseResult;
import com.fly.sky.vo.AirlinesDetail;
import com.fly.sky.vo.AirportDetail;
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
@RequestMapping("/airlines")
@Api(tags = "航司接口")
@Slf4j
public class AirlinesController {

    @Resource
    private AirlinesService airlinesService;

    @PostMapping("findAllAirlines")
    @ApiOperation(value = "查询航司列表", notes = "查询航司列表")
    public ResponseResult<List<Airlines>> findAllAirlines(@RequestBody AirlineCondition condition){
        String logTitle = "=查询航司列表=";
        log.info("{} - 参数：findAllAirlines={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<List<Airlines>> responseResult = new ResponseResult<>();
        responseResult.setData(airlinesService.findAllAirlines(condition));
        return responseResult;
    }



    @PostMapping("findAirlinesById/{id}")
    @ApiOperation(value = "根据主键查询航司信息", notes = "根据主键查询航司信息")
    @ApiResponses({@ApiResponse(code = BusinessCode.CODE_OK, message = "根据主键查询航司信息"),
            @ApiResponse(code = BusinessCode.CODE_1003, message = "航司id为空")})
    public Airlines findAirlinesById(@PathVariable(value = "id") Integer id){
        return airlinesService.findAirlinesById(id);
    }


    @PostMapping("findFlightsAndAirportsByAirlines")
    @ApiOperation(value = "查询航司能飞往的机场列表和航班信息", notes = "查询航司能飞往的机场列表和航班信息")
    public ResponseResult<AirlinesDetail> findFlightsAndAirportsByAirlines(@RequestBody FlightCondition condition){
        String logTitle = "=查询航司能飞往的机场列表和航班信息=";
        log.info("{} - 参数：findFlightsAndAirportsByAirlines={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<AirlinesDetail> responseResult = new ResponseResult<>();
        responseResult.setData(airlinesService.findFlightsAndAirportsByAirlines(condition));
        return responseResult;
    }


}
