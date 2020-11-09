package com.fly.sky.service.impl;


import com.fly.sky.condition.FlyCondition;
import com.fly.sky.domain.Fly;
import com.fly.sky.repository.FlyRepository;
import com.fly.sky.service.FlyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service("flyService")
public class FlyServiceImpl implements FlyService {

    @Resource
    FlyRepository flyRepository;


    @Override
    public List<Fly> findFlyByCondition(FlyCondition condition) {
        return flyRepository.findFlyByCondition(condition);
    }
}
