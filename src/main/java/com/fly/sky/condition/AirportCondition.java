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
public class AirportCondition extends PagedCondition{

    @ApiModelProperty("主键")
    private Integer id;
    @ApiModelProperty("机场名称")
    private String airportName;
    @ApiModelProperty("机场编码")
    private String airportCode;
    @ApiModelProperty("机场所在地")
    private String airportLocation;
    @ApiModelProperty("机场所在区域")
    private String airportArea;
    @ApiModelProperty("创建时间")
    private Date createTime;
    @ApiModelProperty("机场魅力指数")
    private String isHot;
    @ApiModelProperty("机场图片")
    private String airportUrl;
    @ApiModelProperty("机场排名")
    private Integer airportRank;
    @ApiModelProperty("机场所在城市图标")
    private String cityUrl;
    @ApiModelProperty("机场简介")
    private String airportDescription;
    @ApiModelProperty("机场简称")
    private String airportAbbreviate;
    @ApiModelProperty("模糊搜索")
    private String search;
}
