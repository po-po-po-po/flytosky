package com.fly.sky.scrable.domain.hbgj;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/9/1 11:47
 * @Description
 */

@Setter
@Getter
public class HBGJ {
    private String flightNo;
    private String shareFlag;
    private String depCode;
    private String arrCode;
    private String depPlanTime;
    private String arrPlanTime;
    private String depTerminal;
    private String arrTerminal;
    private List<StopCity> sections;

}
