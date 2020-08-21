package com.fly.sky.scrable.domain.mu;

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
@ToString
public class MUData1 {
    private MUData2 aocFlightInfo;
    private String errorCode;
    private String errorMsg;
}
