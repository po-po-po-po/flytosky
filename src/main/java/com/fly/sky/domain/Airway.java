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
public class Airway {
    @ApiModelProperty("主键")
    private Integer id;
    @ApiModelProperty("出发机场")
    private String airwayNameStart;
    @ApiModelProperty("出发机场编码")
    private String airwayNameStartCode;
    @ApiModelProperty("到达机场")
    private String airwayNameEnd;
    @ApiModelProperty("到达机场编码")
    private String airwayNameEndCode;
    @ApiModelProperty("航线魅力指数")
    private Integer airwayRate;
    @ApiModelProperty("航班数量")
    private Integer flightNum;
    @ApiModelProperty("航线描述")
    private String airwayDescription;
    @ApiModelProperty("创建时间")
    private Date createTime;
    @ApiModelProperty("航线状态:0有效 1 无效")
    private Integer status;
}
