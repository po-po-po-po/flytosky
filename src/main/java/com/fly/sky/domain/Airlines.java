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
public class Airlines {
    @ApiModelProperty("主键")
    private Integer id;
    @ApiModelProperty("航司名称")
    private String airlinesName;
    @ApiModelProperty("航司编码")
    private String airlinesCode;
    @ApiModelProperty("航司介绍")
    private String airlinesDescription;
    @ApiModelProperty("小图标")
    private String airlinesImg;
    @ApiModelProperty("所属联盟")
    private String airlinesAlliance;
    @ApiModelProperty("航司简称")
    private String airlinesAbbreviate;
    @ApiModelProperty("航司排名")
    private Integer airlinesRank;
}
