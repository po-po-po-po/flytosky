package com.fly.sky.repository;


import com.fly.sky.condition.AirlineCondition;
import com.fly.sky.domain.Airlines;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:51
 * @Description
 */

public interface AirlinesRepository {

    List<Airlines> findAirlinesByCondition(AirlineCondition condition);

    Airlines findAirlinesById(Integer id);

}
