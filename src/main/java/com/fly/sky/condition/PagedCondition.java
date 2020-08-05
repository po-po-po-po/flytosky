package com.fly.sky.condition;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
public class PagedCondition  {

    @ApiModelProperty("页号")
    protected int pageNo = 1;

    @ApiModelProperty("每页条数")
    protected int pageSize = 10;

    @ApiModelProperty("起始条数")
    protected  int startNum = 0;

    @ApiModelProperty("排序字段和排序方式(例：name asc,age desc)")
    private String orderBy;
}
