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
public class Activity {
    @ApiModelProperty("主键")
    private Integer id;
    @ApiModelProperty("航司编码")
    private String airlinesCode;
    @ApiModelProperty("图片地址")
    private String bannerImgUrl;
    @ApiModelProperty("标题")
    private String title;
    @ApiModelProperty("内容")
    private String content;
    @ApiModelProperty("状态")
    private Integer status;
    @ApiModelProperty("排序")
    private Integer sort;
    @ApiModelProperty("简介")
    private String brief;
    @ApiModelProperty("航司code")
    private String airportCode;
}
