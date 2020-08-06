package com.fly.sky.service.impl;


import com.fly.sky.condition.AirwayCondition;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Airway;
import com.fly.sky.domain.Flight;
import com.fly.sky.enums.AirlinesEnum;
import com.fly.sky.repository.AirwayRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.service.AirwayService;
import com.fly.sky.service.FlightService;
import com.fly.sky.util.PagedList;
import com.fly.sky.vo.FlightDetail;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:55
 * @Description
 */

@Service("flightService")
public class FlightServiceImpl implements FlightService {

    @Resource
    FlightRepository flightRepository;

    public PagedList<Flight> findAllFlights(FlightCondition condition) {
        PagedList<Flight> listPagedList = new PagedList<Flight>();
        PageHelper.startPage(condition.getPageNo(), condition.getPageSize());
        List<Flight>  airportList=flightRepository.findFlightsByCondition(condition);
        PageInfo pageInfo = new PageInfo(airportList);
        listPagedList.setPageNo(condition.getPageNo());
        listPagedList.setPageSize(condition.getPageSize());
        listPagedList.setData(airportList);
        listPagedList.setTotalRows(pageInfo.getTotal());
        return listPagedList;
    }


    public List<FlightDetail> findAllFlightsByAirline(FlightCondition condition) {
        if(null!=condition&& StringUtils.isNotEmpty(condition.getAirlinesSelectId())){
            condition.setAirlinesCode(AirlinesEnum.getAirlineCode(condition.getAirlinesSelectId()));
        }
        List<FlightDetail>  airportList=flightRepository.findFlightsDetail(condition);
        return airportList;
    }

}
