package com.fly.sky.scrable.domain.cz;

import lombok.Getter;
import lombok.Setter;

/**
 * description: CZParam
 * date: 2020/8/16 21:32
 * author: wangzekun
 * version: 1.0
 */

@Getter
@Setter
public class CZParam {
    private String depCity;//PVG
    private String arrCity;//CTU
    private String flightDate;//格式20200926
    private String adultNum;
    private String childNum;
    private String infantNum;
    private String cabinOrder;
    private String airLine;
    private String flyType;
    private String international;
    private String action;
    private String segType;
    private String cache;
    private String preUrl;
    private String isMember;

    public CZParam(String depCity, String arrCity, String flightDate) {
        this.depCity = depCity;
        this.arrCity = arrCity;
        this.flightDate = flightDate;
        this.adultNum = "1";
        this.childNum = "0";
        this.infantNum = "0";
        this.cabinOrder = "0";
        this.airLine = "1";
        this.flyType = "0";
        this.international ="0";
        this.action = "0";
        this.segType = "1";
        this.cache = "0";
        this.preUrl = "";
        this.isMember= "";
    }
}
