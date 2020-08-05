package com.fly.sky.service;


import com.fly.sky.condition.AirportCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.util.PagedList;
import com.github.pagehelper.Page;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/22 09:52
 * @Description
 */


public interface AirportService {


    PagedList<Airport> findAllAirport(AirportCondition condition);


    Airport findAirportById(Integer id);

    void saveAirport(Airport airport);

    PagedList<Airport> findAirportDetail(AirportCondition condition);
}
