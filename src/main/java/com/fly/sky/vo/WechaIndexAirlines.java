package com.fly.sky.vo;

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
public class WechaIndexAirlines {

    @ApiModelProperty("跳转地址")
    private String navigatorUrl;
    @ApiModelProperty("航司图标")
    private String airlinesIcon;
    @ApiModelProperty("航司名称")
    private String airlinesName;
    @ApiModelProperty("航司名称")
    private String airlinesAbbreviate;

    public WechaIndexAirlines(String airlinesName,String navigatorUrl, String airlinesIcon,String airlinesAbbreviate) {
        this.navigatorUrl = navigatorUrl;
        this.airlinesIcon = airlinesIcon;
        this.airlinesName = airlinesName;
        this.airlinesAbbreviate = airlinesAbbreviate;
    }
}
