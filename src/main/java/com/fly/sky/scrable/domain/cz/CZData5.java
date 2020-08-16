package com.fly.sky.scrable.domain.cz;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * description: CZData4
 * date: 2020/8/16 22:11
 * author: wangzekun
 * version: 1.0
 */

@Getter
@Setter
@ToString
public class CZData5 {
    private String flightNo; //CZ9326
    private boolean codeShare;//TRUE
    private String depPort; //SHA
    private String arrPort; //CTU
    private String depTime; //0825
    private String arrTime; //1120
    private String departureTerminal; //T2
    private String arrivalTerminal; //T2
    private String stopNameZh;//经停城市中文名 重庆



}
