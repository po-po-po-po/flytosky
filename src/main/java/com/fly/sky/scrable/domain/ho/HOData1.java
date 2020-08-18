package com.fly.sky.scrable.domain.ho;

import com.fly.sky.scrable.domain.cz.CZData2;
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
public class HOData1 {
    private String RouteType;
    private String CurrencyCode;
    private String TicketingDate;
    private String InterFlag;
    private String ResultCode;
    private String ErrorInfo;
    private List<HOData2> FlightInfoList;
}
