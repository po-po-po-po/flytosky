package com.fly.sky.scrable.domain.ho;

import com.fly.sky.scrable.domain.cz.CZData2;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * description: CZData1
 * date: 2020/8/16 21:44
 * author: wangzekun
 * version: 1.0
 */

@Setter
@Getter
public class HOData2 {

    private String DepCityName;//上海
    private String ArrCityName;//丽江
    private String DepAirportName;//浦东
    private String ArrAirportName;//三义
    private String DepAirport;//PVG
    private String ArrAirport;//LJG
    private String FlightNo;//HO1227
    private String DepTerm;//T2
    private String ArrTerm;//""
    private String StopAirport;// null CSX
    private String StopAirportName;// "" 黄花
    private String DepDateTime;
    private String ArrDateTime;

}
