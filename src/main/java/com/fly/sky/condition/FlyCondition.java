package com.fly.sky.condition;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Setter
@Getter
@ToString
public class FlyCondition {
    @ApiModelProperty("主键")
    private Integer id;
    @ApiModelProperty("航司")
    private String airlineCode;
    @ApiModelProperty("随心飞名称")
    private String flyName;
    @ApiModelProperty("随心飞图标")
    private String flyIcon;
}
