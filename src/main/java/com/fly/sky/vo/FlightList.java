package com.fly.sky.vo;

import com.fly.sky.domain.Airway;
import com.fly.sky.domain.Flight;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/31 10:34
 * @Description
 */
@Setter
@Getter
@ToString
public class FlightList {
    //同一航线的航班列表
    private List<FlightDetail> flightList;
    //所属航线
    private Airway airway;
}
