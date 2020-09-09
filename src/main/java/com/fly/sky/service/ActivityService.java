package com.fly.sky.service;


import com.fly.sky.condition.ActivityCondition;
import com.fly.sky.domain.Activity;
import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/22 09:52
 * @Description
 */


public interface ActivityService {

    List<Activity> findActivityList(ActivityCondition condition);

}
