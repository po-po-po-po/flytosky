package com.fly.sky.repository;


import com.fly.sky.condition.AirwayCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.Airway;
import com.fly.sky.vo.AirportVo;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:51
 * @Description
 */

public interface AirwayRepository {

    List<Airway> findAirwaysByCondition(AirwayCondition condition);

    Airway findAirwaysByStartAndEnd(AirwayCondition condition);

    List<AirportVo> findAirwayGroupByAirwayNameStart();

    List<Airway> findAirwaysForAirwayName(AirwayCondition condition);

    void updateAirwayForAirwayName(AirwayCondition condition);
    void insertAirway(Airway airway);

}
