package com.fly.sky.service.impl;


import com.fly.sky.condition.ActivityCondition;
import com.fly.sky.condition.AirlineCondition;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Activity;
import com.fly.sky.domain.Airlines;
import com.fly.sky.domain.Airport;
import com.fly.sky.repository.ActivityRepository;
import com.fly.sky.repository.AirlinesRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.service.ActivityService;
import com.fly.sky.service.AirlinesService;
import com.fly.sky.vo.AirlinesDetail;
import com.fly.sky.vo.AirlinesVo;
import com.fly.sky.vo.FlightDetail;
import com.fly.sky.vo.WechaIndexAirlines;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:55
 * @Description
 */

@Service("activityService")
public class ActivityServiceImpl implements ActivityService {

    @Resource
    ActivityRepository activityRepository;

    public List<Activity> findActivityList(ActivityCondition condition){
        List<Activity>  activityList=activityRepository.findActivityByCondition(condition);
        return activityList;
    };


}