package com.fly.sky.condition;

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
public class UserFlightCondition extends PagedCondition{
    @ApiModelProperty("主键id")
    private String id;
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
    @ApiModelProperty("航班频率")
    private String openid;
    @ApiModelProperty("创建时间")
    private Date createTime;
    @ApiModelProperty("航班状态:0有效 1 无效")
    private Integer status;
    @ApiModelProperty("开始时间")
    private String flightStartTime;
    @ApiModelProperty("结束时间")
    private String flightEndTime;
    @ApiModelProperty("code")
    private String code;
    @ApiModelProperty("头像地址")
    private String avatarUrl;
    @ApiModelProperty("所在城市")
    private String city;
    @ApiModelProperty("所在国家")
    private String country;
    @ApiModelProperty("性别")
    private String gender;
    @ApiModelProperty("昵称")
    private String nickName;
    @ApiModelProperty("所在省份")
    private String province;
    @ApiModelProperty("计划")
    private String userplan;


}
