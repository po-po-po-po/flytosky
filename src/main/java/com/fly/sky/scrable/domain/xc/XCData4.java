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
public class XCData4 {
    private String flightNumber;
    private String airlineCode;
    private String departureDate;
    private String arrivalDate;
    private XCData5 departureAirportInfo;
    private XCData5 arrivalAirportInfo;
    private List<XCData6> stopInfo;
}
