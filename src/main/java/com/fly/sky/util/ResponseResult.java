package com.fly.sky.util;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fly.sky.exceptions.BusinessException;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.StringUtils;

/**
 * @author lixiaodong
 */
@ApiModel("接口返回标准数据")
public class ResponseResult<T> {
    @ApiModelProperty("0-通过data获取数据, 其他-通过message输出错误")
    private int code = 0;
    @ApiModelProperty("当code不为0时, 表示错误信息")
    private String message;
    @ApiModelProperty("当code为0时, 可获取响应结果")
    private T data;
    /**
     * 业务状态码：1：成功，10000：服务器内部错误，其他状态见接口说明
     */
    private int subCode = 1;
    /**
     * 业务消息：默认null
     */
    private String subMessage = StringUtils.EMPTY;

    public ResponseResult() {

    }

    public ResponseResult(int code) {
        this.code = code;
        if (code != 0) {
            this.message = MessageHelper.getInstance().getMessage(String.valueOf(code), "ERROR:" + code);
        }
    }

    public ResponseResult(T data) {
        this.data = data;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public int getSubCode() {
        return subCode;
    }

    public void setSubCode(int subCode) {
        this.subCode = subCode;
    }

    public String getSubMessage() {
        return subMessage;
    }

    public void setSubMessage(String subMessage) {
        this.subMessage = subMessage;
    }

    @JsonIgnore
    public T getDataWithException() {
        if(code != 0 && code != 200){
            throw new BusinessException(code);
        }
        return data;
    }
}
