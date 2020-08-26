package com.fly.sky.scrable.domain.xc;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/8/26 10:53
 * @Description
 */

@Setter
@Getter
public class XCParam1 {
    private String flightWay;
    private String classType;
    private boolean hasChild;
    private boolean hasBaby;
    private int searchIndex;
    private String ct;
    private List<XCParam2> airportParams;
    private String selectedInfos;
    private boolean army;
    private String token;

}
