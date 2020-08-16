package com.fly.sky.scrable.domain.cz;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

/**
 * description: CZData1
 * date: 2020/8/16 21:44
 * author: wangzekun
 * version: 1.0
 */

@Setter
@Getter
@ToString
public class CZData1 {
    private boolean success;
    private CZData2 data;
    private String version;
    private String server;
}
