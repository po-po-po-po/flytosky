package com.fly.sky.scrable.domain.mu;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/8/21 09:46
 * @Description
 */

@Setter
@Getter
@ToString
public class MUData2 {
    private String arrvCityName; //大兴国际机场
    private String deptCityName; //白云机场
    private List<MUData3> flightInfo;
}
