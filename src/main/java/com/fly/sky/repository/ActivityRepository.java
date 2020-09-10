package com.fly.sky.repository;


import com.fly.sky.condition.ActivityCondition;
import com.fly.sky.domain.Activity;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:51
 * @Description
 */

public interface ActivityRepository {

    List<Activity> findActivityByCondition(ActivityCondition condition);

    Activity findActivityDetailById(Integer id);

}
