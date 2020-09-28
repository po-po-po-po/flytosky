package com.fly.sky.vo;

import com.fly.sky.domain.WxUser;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;
import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:47
 * @Description
 */

@Setter
@Getter
@ToString
public class UserFlightDetail {

    @ApiModelProperty("航班数量")
    private int flightsNo;
    @ApiModelProperty("城市数量")
    private int citiesNo;
    @ApiModelProperty("用户航班信息")
    private List<UserFlightVo> userFlightVoList;
    @ApiModelProperty("用户信息")
    private WxUser wxUser;


}
