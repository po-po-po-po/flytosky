package com.fly.sky.condition;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
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
public class WxUserCondition {
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
    private Date createTime;
    private Date updateTime;
    @ApiModelProperty("signature")
    private String signature;
    @ApiModelProperty("iv")
    private String iv;
    @ApiModelProperty("rawData")
    private String rawData;
    @ApiModelProperty("encryptedData")
    private String encryptedData;
    @ApiModelProperty("openId")
    private String openId;
    @ApiModelProperty("code")
    private String code;
}
