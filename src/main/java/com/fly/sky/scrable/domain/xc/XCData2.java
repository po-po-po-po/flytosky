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
public class XCData2 {
    private String routeType;
    private List<XCData3> legs;
}
