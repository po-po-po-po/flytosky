package com.fly.sky.service.impl;


import com.fly.sky.condition.AirportCondition;
import com.fly.sky.condition.AirwayCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.Airway;
import com.fly.sky.exceptions.BusinessCode;
import com.fly.sky.exceptions.BusinessException;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.repository.AirwayRepository;
import com.fly.sky.service.AirportService;
import com.fly.sky.service.AirwayService;
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

@Service("airwayService")
public class AirwayServiceImpl implements AirwayService {

    @Resource
    AirwayRepository airwayRepository;

    public PagedList<Airway> findAllAirways(AirwayCondition condition) {
        PagedList<Airway> listPagedList = new PagedList<Airway>();
        PageHelper.startPage(condition.getPageNo(), condition.getPageSize());
        List<Airway>  airportList=airwayRepository.findAirwaysByCondition(condition);
        PageInfo pageInfo = new PageInfo(airportList);
        listPagedList.setPageNo(condition.getPageNo());
        listPagedList.setPageSize(condition.getPageSize());
        listPagedList.setData(airportList);
        listPagedList.setTotalRows(pageInfo.getTotal());
        return listPagedList;
    }


    public Airway findAirwaysByStartAndEnd(AirwayCondition condition){
        return airwayRepository.findAirwaysByStartAndEnd(condition);
    };
}
