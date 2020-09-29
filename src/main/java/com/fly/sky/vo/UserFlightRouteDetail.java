package com.fly.sky.vo;

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
public class UserFlightRouteDetail {

    @ApiModelProperty("目的地")
    private List<UserFlightRoute> userFlightRouteListserFlightRoute;
    @ApiModelProperty("头像地址")
    private String avatarUrl;
    @ApiModelProperty("昵称")
    private String nickName;

}
