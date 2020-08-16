package com.fly.sky.scrable.domain.cz;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * description: CZData3
 * date: 2020/8/16 22:08
 * author: wangzekun
 * version: 1.0
 */
@Getter
@Setter
@ToString
public class CZData3 {
    private String depCity;//PVG
    private String arrCity;//CTU
    private String date;//格式20200926
    private CZData4 dateFlight;
}
