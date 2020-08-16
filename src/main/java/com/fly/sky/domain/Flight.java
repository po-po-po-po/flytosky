package com.fly.sky.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
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
public class Flight {
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
    @ApiModelProperty("航班备注")
    private String flightRemark;
    @ApiModelProperty("创建时间")
    private Date createTime;
    @ApiModelProperty("航班状态:0有效 1 无效")
    private Integer status;
    @ApiModelProperty("出发机场")
    private String airportNameStart;
    @ApiModelProperty("到达机场")
    private String airportNameEnd;
}
