package com.fly.sky.repository;


import com.fly.sky.condition.FlyCondition;
import com.fly.sky.domain.Fly;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:51
 * @Description
 */

public interface FlyRepository {

    List<Fly> findFlyByCondition(FlyCondition condition);



}
