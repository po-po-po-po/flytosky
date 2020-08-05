package com.fly.sky.exceptions;


import io.swagger.annotations.ApiModelProperty;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 16:24
 * @Description
 */
public class BusinessCode {

    @ApiModelProperty("成功")
    public static final int CODE_OK = 0;

    public static final int CODE_1001 = 1001;
    public static final int CODE_1002 = 1002;

    @ApiModelProperty("用户id为空")
    public static final int CODE_1003 = 1003;

}
