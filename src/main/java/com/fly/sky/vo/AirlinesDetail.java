package com.fly.sky.vo;

import com.fly.sky.domain.Airlines;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.Flight;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/30 16:22
 * @Description
 */

@Setter
@Getter
@ToString
public class AirlinesDetail {

    @ApiModelProperty("航司可飞往的航班列表")
    List<FlightDetail> flightList;

    @ApiModelProperty("航司可飞往的出发机场列表")
    List<Airport> airportStartList;

    @ApiModelProperty("航司可飞往的到达机场列表")
    List<Airport> airportEndList;

    @ApiModelProperty("航司可飞往的航班列表")
    List<FlightDetail> airwayList;

    @ApiModelProperty("航司信息")
    Airlines airlines;

}
