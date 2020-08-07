package com.fly.sky.service.impl;


import com.fly.sky.condition.AirlineCondition;
import com.fly.sky.condition.AirportCondition;
import com.fly.sky.domain.Airlines;
import com.fly.sky.domain.Airport;
import com.fly.sky.exceptions.BusinessCode;
import com.fly.sky.exceptions.BusinessException;
import com.fly.sky.repository.AirlinesRepository;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.service.AirlinesService;
import com.fly.sky.service.AirportService;
import com.fly.sky.util.PagedList;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:55
 * @Description
 */

@Service("airlinesService")
public class AirlinesServiceImpl implements AirlinesService {

    @Resource
    AirlinesRepository airlinesRepository;

    public List<Airlines> findAllAirlines(AirlineCondition condition) {
        List<Airlines>  airlinesList=airlinesRepository.findAirlinesByCondition(condition);
        return airlinesList;
    }


    public Airlines findAirlinesById(Integer id) {
        return airlinesRepository.findAirlinesById(id);
    }

    public List<Airlines> selectAirlineListByAirlinesCodeList(List airlinesCodeList){
        return airlinesRepository.selectAirlineListByAirlinesCodeList(airlinesCodeList);
    }
}
