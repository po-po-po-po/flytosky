package com.fly.sky.domain;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * description: Activity
 * date: 2020/9/9 22:47
 * author: wangzekun
 * version: 1.0
 */
@Setter
@Getter
@ToString
public class Activitys {

    @ApiModelProperty("活动")
    private Activity activity;

    @ApiModelProperty("航司")
    private Airlines airlines;

}
