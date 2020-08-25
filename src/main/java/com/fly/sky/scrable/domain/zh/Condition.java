package com.fly.sky.scrable.domain.zh;

import lombok.Getter;
import lombok.Setter;

/**
 * description: Condition
 * date: 2020/8/24 22:47
 * author: wangzekun
 * version: 1.0
 */
@Getter
@Setter
public class Condition {
    private static String orgCityCode; //PEK
    private static String dstCityCode; //SZX
    private static String hcType; //DC
    private static String orgDate; //2020-08-29
    private static String dstDate; //2020-08-30

    public Condition(String orgCityCode, String dstCityCode, String hcType, String orgDate, String dstDate) {
        this.orgCityCode = orgCityCode;
        this.dstCityCode = dstCityCode;
        this.hcType = hcType;
        this.orgDate = orgDate;
        this.dstDate = dstDate;
    }
}
