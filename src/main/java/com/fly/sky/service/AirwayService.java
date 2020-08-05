package com.fly.sky.service;


import com.fly.sky.condition.AirwayCondition;
import com.fly.sky.domain.Airway;
import com.fly.sky.util.PagedList;

/**
 * @Auther wangzekun
 * @Date 2020/7/22 09:52
 * @Description
 */


public interface AirwayService {


    PagedList<Airway> findAllAirways(AirwayCondition condition);

    Airway findAirwaysByStartAndEnd(AirwayCondition condition);


}
