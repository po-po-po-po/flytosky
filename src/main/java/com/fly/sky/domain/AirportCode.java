package com.fly.sky.domain;

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
public class AirportCode {
    @ApiModelProperty("出发机场编码")
    private String deptCode;
    @ApiModelProperty("到达机场编码")
    private String arrCode;
    @ApiModelProperty("状态0 有效 1 无效")
    private String status;
    @ApiModelProperty("创建时间")
    private Date  createTime;
}
