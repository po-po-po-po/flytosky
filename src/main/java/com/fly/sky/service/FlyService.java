package com.fly.sky.service;


import com.fly.sky.condition.FlyCondition;
import com.fly.sky.domain.Fly;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/22 09:52
 * @Description
 */


public interface FlyService {

    List<Fly> findFlyByCondition(FlyCondition condition);

}
