package com.fly.sky.vo;

import com.fly.sky.domain.WxUser;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:47
 * @Description
 */

@Setter
@Getter
@ToString
public class UserFlightRoute {

    @ApiModelProperty("目的地")
    private String destination;
    @ApiModelProperty("经度")
    private String longitude;
    @ApiModelProperty("纬度")
    private String latitude;
    @ApiModelProperty("航班频率")
    private String openid;
    @ApiModelProperty("头像地址")
    private String avatarUrl;
    @ApiModelProperty("昵称")
    private String nickName;

}
