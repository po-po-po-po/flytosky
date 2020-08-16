package com.fly.sky.scrable.domain.cz;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

/**
 * description: CZData2
 * date: 2020/8/16 21:46
 * author: wangzekun
 * version: 1.0
 */
@Getter
@Setter
@ToString
public class CZData2 {
    private String id;
    private List<CZData3> segment;
    private String citys;
    private String airports;

}
