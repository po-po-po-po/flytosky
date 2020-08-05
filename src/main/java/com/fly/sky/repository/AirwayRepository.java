package com.fly.sky.repository;


import com.fly.sky.condition.AirwayCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.Airway;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:51
 * @Description
 */

public interface AirwayRepository {

    List<Airway> findAirwaysByCondition(AirwayCondition condition);


    Airway findAirwaysByStartAndEnd(AirwayCondition condition);
}
