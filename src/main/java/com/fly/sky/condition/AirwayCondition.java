package com.fly.sky.condition;

import com.fasterxml.jackson.annotation.JsonFormat;
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
public class AirwayCondition extends PagedCondition{

    @ApiModelProperty("主键")
    private Integer id;
    @ApiModelProperty("出发机场")
    private String airwayNameStart;
    @ApiModelProperty("到达机场")
    private String airwayNameEnd;
    @ApiModelProperty("航线魅力指数")
    private Integer airwayRate;

}
