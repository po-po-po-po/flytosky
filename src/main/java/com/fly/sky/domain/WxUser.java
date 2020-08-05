package com.fly.sky.domain;

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
public class WxUser {
    @ApiModelProperty("主键")
    private Integer id;
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
    @ApiModelProperty("openId")
    private String openId;
    private Date createTime;
    private Date updateTime;
}
