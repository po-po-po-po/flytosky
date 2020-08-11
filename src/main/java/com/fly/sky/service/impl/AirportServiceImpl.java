package com.fly.sky.service.impl;


import com.fly.sky.condition.AirportCondition;
import com.fly.sky.domain.Airlines;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.Flight;
import com.fly.sky.exceptions.BusinessCode;
import com.fly.sky.exceptions.BusinessException;
import com.fly.sky.repository.AirlinesRepository;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.repository.AirwayRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.service.AirportService;
import com.fly.sky.util.PagedList;
import com.fly.sky.vo.AirportVo;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
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
    AirlinesRepository airlinesRepository;

    @Resource
    AirwayRepository airwayRepository;


    @Resource
    FlightRepository flightRepository;

    public PagedList<AirportVo> findAllAirport(AirportCondition condition) {
        PagedList<AirportVo> listPagedList = new PagedList<>();
        PageHelper.startPage(condition.getPageNo(), condition.getPageSize());
        List<Airport>  airportList=airportRepository.findAirportsByCondition(condition);
        List<AirportVo> airways=airwayRepository.findAirwayGroupByAirwayNameStart();
        List<AirportVo> flights=flightRepository.findFlightsGroupByFlightNameStart();
        List<AirportVo>  airportNewList=new ArrayList<>();
        //获取机场的信息
        for (Airport airport : airportList) {
            AirportVo vo=new AirportVo();
            BeanUtils.copyProperties(airport,vo);
            for (AirportVo airway : airways) {
                if(airport.getAirportAbbreviate().equals(airway.getAirportAbbreviate())){
                    vo.setAirportAirwaysNum(airway.getAirportAirwaysNum());
                }
            }
            for (AirportVo flight : flights) {
                if(airport.getAirportAbbreviate().equals(flight.getAirportAbbreviate())){
                    vo.setAirportFlightNum(flight.getAirportFlightNum());
                }
            }
            airportNewList.add(vo);
        }
        PageInfo pageInfo = new PageInfo(airportNewList);
        listPagedList.setPageNo(condition.getPageNo());
        listPagedList.setPageSize(condition.getPageSize());
        listPagedList.setData(airportNewList);
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
            condition.setSearch(condition.getSearch().toUpperCase().replace("机场",""));
        }
        List<Airport>  airportList=airportRepository.findAirwaysDestinationAndAirportByCondition(condition);
        //如果查询是空 则说明可能查询的是航空公司代码
        if(CollectionUtils.isEmpty(airportList)){
            //获取航空公司信息
            Airlines airlines= airlinesRepository.findAirlinesByAirlinesCode(condition.getSearch());
            List<Flight>  flightList=flightRepository.findFlightsGroupByAirlineCode(condition);
            List<String> airportDestinationList=new ArrayList<>();
            for (Flight flight: flightList) {
                airportDestinationList.add(flight.getFlightNameEnd());
            }
            if(!CollectionUtils.isEmpty(airportDestinationList)){
                //获取能到达的机场列表
                airportList=airportRepository.findAirportsByAirportAbbreviateList(airportDestinationList);
                if(null!=airlines){
                    airportPagedList.setAirlines(airlines.getAirlinesAbbreviate()+"能飞往机场目的地如下：");
                }
            }
        }else{
            airportPagedList.setAirlines("");
        }

        PageInfo pageInfo = new PageInfo(airportList);
        airportPagedList.setPageNo(condition.getPageNo());
        airportPagedList.setPageSize(condition.getPageSize());
        airportPagedList.setData(airportList);
        airportPagedList.setTotalRows(pageInfo.getTotal());
        return airportPagedList;
    };
}
