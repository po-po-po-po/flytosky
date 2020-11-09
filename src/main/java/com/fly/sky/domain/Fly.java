package com.fly.sky.domain;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @Auther wangzekun
 * @Date 2020/11/9 09:47
 * @Description
 */

@Setter
@Getter
@ToString
public class Fly {
    @ApiModelProperty("主键")
    private Integer id;
    @ApiModelProperty("航司")
    private String airlineCode;
    @ApiModelProperty("随心飞名称")
    private String flyName;
    @ApiModelProperty("随心飞图标")
    private String flyIcon;
    @ApiModelProperty("随心飞图标")
    private Integer sort;
}
