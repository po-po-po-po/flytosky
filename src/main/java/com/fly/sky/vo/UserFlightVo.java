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
public class UserFlightVo {
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
    @ApiModelProperty("航班日期")
    private String flightDateArrive;
    @ApiModelProperty("航空公司代码")
    private String airlinesCode;
    @ApiModelProperty("航班频率")
    private String openid;
    @ApiModelProperty("创建时间")
    private Date createTime;
    @ApiModelProperty("创建时间")
    private String createTimes;
    @ApiModelProperty("航班状态:0有效 1 无效")
    private Integer status;
    @ApiModelProperty("开始时间")
    private String flightStartTime;
    @ApiModelProperty("结束时间")
    private String flightEndTime;
    @ApiModelProperty("航空公司")
    private String airlinesName;
    @ApiModelProperty("航空公司")
    private String airlinesImg;
    @ApiModelProperty("计划")
    private String userplan;
    @ApiModelProperty("头像地址")
    private String avatarUrl;
    @ApiModelProperty("昵称")
    private String nickName;

}
