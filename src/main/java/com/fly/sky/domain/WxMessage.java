package com.fly.sky.domain;

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
public class WxMessage {
    @ApiModelProperty("主键")
    private Integer id;
    @ApiModelProperty("留言内容")
    private String content;
    @ApiModelProperty("openId")
    private String openId;
    @ApiModelProperty("回复")
    private String reply;
    @ApiModelProperty("回复状态 0 未回复 1回复")
    private Integer status;
    private Date createTime;
    private Date replyTime;
    @ApiModelProperty("code")
    private String code;
}
