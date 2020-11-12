package com.fly.sky.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:47
 * @Description
 */

@Setter
@Getter
@ToString
public class FlightDetail {
    @ApiModelProperty("主键")
    private Integer id;
    @ApiModelProperty("航班号")
    private String flightNo;
    @ApiModelProperty("出发机场")
    private String flightNameStart;
    @ApiModelProperty("到达机场")
    private String flightNameEnd;
    @ApiModelProperty("航班日期")
    private String flightDate;
    @ApiModelProperty("航空公司代码")
    private String airlinesCode;
    @ApiModelProperty("所属航线")
    private Integer airwayId;
    @ApiModelProperty("航班频率")
    private String flightRequency;
    @ApiModelProperty("航空公司名称")
    private String airlinesName;
    @ApiModelProperty("航空公司图标")
    private String airlinesIcon;
    @ApiModelProperty("航班备注")
    private String flightRemark;
    @ApiModelProperty("航空公司图标")
    private String airlinesImg;
    @ApiModelProperty("航空公司名称")
    private String airlinesAbbreviate;
    @ApiModelProperty("出发机场")
    private String airportNameStart;
    @ApiModelProperty("到达机场")
    private String airportNameEnd;
    @ApiModelProperty("出发机场")
    private String airportNameStartCode;
    @ApiModelProperty("到达机场")
    private String airportNameEndCode;
    @ApiModelProperty("航班数量")
    private String flightNumber;
}
