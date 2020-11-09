package com.fly.sky.condition;

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
public class FlightCondition extends PagedCondition{

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
    @ApiModelProperty("创建时间")
    private Date createTime;
    @ApiModelProperty("所属航线")
    private Integer airwayId;
    @ApiModelProperty("航班频率")
    private String flightRequency;
    @ApiModelProperty("航空公司代码")
    private String airlinesCode;
    @ApiModelProperty("下拉列表航司的编号")
    private String airlinesSelectId;
    @ApiModelProperty("排序：1从早到晚 2从晚到早")
    private Integer sortId;
    @ApiModelProperty("出发机场")
    private String airportNameStart;
    @ApiModelProperty("到达机场")
    private String airportNameEnd;
    @ApiModelProperty("下拉列表航司的编号")
    private String flightDateStart;
    @ApiModelProperty("下拉列表航司的编号")
    private String flightDateEnd;
    @ApiModelProperty("出发机场code")
    private String airportNameStartCode;
    @ApiModelProperty("到达机场code")
    private String airportNameEndCode;
}
