package com.fly.sky.scrable.domain.ho;

import lombok.Getter;
import lombok.Setter;

/**
 * @Auther wangzekun
 * @Date 2020/8/18 14:26
 * @Description
 */
@Getter
@Setter
public class HOParam {
    private String flightType;
    private String tripType;
    private String directType;
    private String departureDate;//格式2020-09-09
    private String sendCode;
    private String arrCode;
    private String returnDate;


    public HOParam(String sendCode, String arrCode, String departureDate) {
        this.flightType = "OW";
        this.tripType = "D";
        this.directType = "D";
        this.sendCode = sendCode;
        this.arrCode = arrCode;
        this.departureDate = departureDate;
        this.returnDate= "";
    }
}

