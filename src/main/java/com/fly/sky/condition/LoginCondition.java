package com.fly.sky.condition;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:47
 * @Description
 */

@Setter
@Getter
@ToString
public class LoginCondition {


    @ApiModelProperty("用户名")
    private String userName;

    @ApiModelProperty("密码")
    private String password;

}
