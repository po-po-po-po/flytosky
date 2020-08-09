package com.fly.sky.service.impl;


import com.fly.sky.condition.AirportCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.Flight;
import com.fly.sky.exceptions.BusinessCode;
import com.fly.sky.exceptions.BusinessException;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.service.AirportService;
import com.fly.sky.util.PagedList;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:55
 * @Description
 */

@Service("airportService")
public class AirportServiceImpl implements AirportService {

    @Resource
    AirportRepository airportRepository;

    @Resource
    FlightRepository flightRepository;

    public PagedList<Airport> findAllAirport(AirportCondition condition) {
        PagedList<Airport> listPagedList = new PagedList<Airport>();
        PageHelper.startPage(condition.getPageNo(), condition.getPageSize());
        List<Airport>  airportList=airportRepository.findAirportsByCondition(condition);
        PageInfo pageInfo = new PageInfo(airportList);
        listPagedList.setPageNo(condition.getPageNo());
        listPagedList.setPageSize(condition.getPageSize());
        listPagedList.setData(airportList);
        listPagedList.setTotalRows(pageInfo.getTotal());
        return listPagedList;
    }



    public Airport findAirportById(Integer id) {
        return airportRepository.findAirportById(id);
    }

    public void saveAirport(Airport airport){
        //校验机场名称不能重复
        Airport airport1= airportRepository.findAirportByName(airport.getAirportName());
        if(null!=airport1){
            throw new BusinessException(BusinessCode.CODE_1001,"机场名称不能重复");
        }
        //校验机场代码不能重复
        Airport airport2= airportRepository.findAirportByCode(airport.getAirportCode());
        if(null!=airport2){
            throw new BusinessException(BusinessCode.CODE_1002,"机场代码不能重复");
        }
        airport.setCreateTime(new Date());
        airportRepository.insertAirport(airport);
    }

    public PagedList<Airport> findAirportDetail(AirportCondition condition){
        PagedList<Airport> airportPagedList = new PagedList<>();
        PageHelper.startPage(condition.getPageNo(), condition.getPageSize());
        if(null!=condition&& StringUtils.isNotEmpty(condition.getSearch())){
            condition.setSearch(condition.getSearch().toUpperCase());
        }
        List<Airport>  airportList=airportRepository.findAirwaysDestinationAndAirportByCondition(condition);
        //如果查询是空 则说明可能查询的是航空公司代码
        if(CollectionUtils.isEmpty(airportList)){
            List<Flight>  flightList=flightRepository.findFlightsGroupByAirlineCode(condition);
            List<String> airportDestinationList=new ArrayList<>();
            for (Flight flight: flightList) {
                airportDestinationList.add(flight.getFlightNameEnd());
            }
            if(!CollectionUtils.isEmpty(airportDestinationList)){
                //获取能到达的机场列表
                airportList=airportRepository.findAirportsByAirportAbbreviateList(airportDestinationList);
            }
        }

        PageInfo pageInfo = new PageInfo(airportList);
        airportPagedList.setPageNo(condition.getPageNo());
        airportPagedList.setPageSize(condition.getPageSize());
        airportPagedList.setData(airportList);
        airportPagedList.setTotalRows(pageInfo.getTotal());
        return airportPagedList;
    };
}
