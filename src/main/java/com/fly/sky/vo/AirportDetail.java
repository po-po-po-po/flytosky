package com.fly.sky.vo;

import com.fly.sky.domain.Airport;
import com.fly.sky.util.PagedList;
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
public class AirportDetail {
    @ApiModelProperty("始发机场")
    Airport airport;
    @ApiModelProperty("可飞往的目的地机场")
    PagedList<Airport> airportsList;
}
