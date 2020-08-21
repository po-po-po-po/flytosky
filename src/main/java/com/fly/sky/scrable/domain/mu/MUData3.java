package com.fly.sky.scrable.domain.mu;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @Auther wangzekun
 * @Date 2020/8/21 09:46
 * @Description
 */

@Setter
@Getter
@ToString
public class MUData3 {
    private String arrAirport; //PKX
    private String dEPT_TERMINAL;//T1
    private String aRR_TERMINAL;//T2
    private String deptAirport; //CAN
    private String flightNo; //5678
    private String planArrTime; //2020-09-12 10:55:00
    private String planDeptTime; //2020-09-12 07:45:00
    private String carrier; //FM ,MU
}
