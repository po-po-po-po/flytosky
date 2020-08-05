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
public class WxMessageCondition extends PagedCondition{
    @ApiModelProperty("主键")
    private Integer id;
    @ApiModelProperty("留言内容")
    private String content;
    @ApiModelProperty("留言人用户id")
    private String userId;
    @ApiModelProperty("回复")
    private String reply;
    @ApiModelProperty("回复状态 0 未回复 1回复")
    private Integer status;
    private Date createTime;
    private Date replyTime;
    @ApiModelProperty("openId")
    private String openId;
    @ApiModelProperty("code")
    private String code;
}
