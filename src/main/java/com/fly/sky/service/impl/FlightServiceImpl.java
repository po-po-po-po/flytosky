package com.fly.sky.service.impl;


import com.fly.sky.condition.AirwayCondition;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Airway;
import com.fly.sky.domain.Flight;
import com.fly.sky.enums.AirlinesEnum;
import com.fly.sky.pythons.XcFlightUtil;
import com.fly.sky.repository.AirwayRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.service.AirwayService;
import com.fly.sky.service.FlightService;
import com.fly.sky.util.PagedList;
import com.fly.sky.vo.FlightDetail;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
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

        if(StringUtils.isNotEmpty(condition.getFlightDate())&&!"起飞时间".equals(condition.getFlightDate())){
          String flightDate= condition.getFlightDate();
            String[] split = flightDate.split("-");
            String flightDateStart=split[0];
            String flightDateEnd=split[1];
            airportList = airportList.stream().filter(
                    flight ->
                            flight.getFlightDate().split("-")[0].compareTo(flightDateStart)>=0&&flight.getFlightDate().split("-")[0].compareTo(flightDateEnd)<=0).collect(
                            Collectors.toList());
        }
        //对时间做处理
        return airportList;
    }


    public void synchronizeFlight(FlightCondition condition) throws Exception {
        boolean select = true;
        //航班总数据
        int pageindex = 1;
        int pagesize =500;
        while (select) {
            int pageNo= (pageindex -1) * pagesize;
            System.out.println("----------------------------"+pageNo);
            condition.setPageNo(pageNo);
            condition.setPageSize(pagesize);
            List<Flight> flightList= flightRepository.findFlightsForSynchronize(condition);
            for (int i = 0; i < flightList.size(); i++) {
                Flight flight= flightList.get(i);
                FlightCondition conditions=new FlightCondition();
                //获取航班数据信息
                Flight flights= XcFlightUtil.findFlightByFlightCode(flight.getFlightNo(),"20201001");
                System.out.println(flights);
                //如果flights的数据是空  那说明这个航班没有数据 那备注不存在
                if(null==flights){
                    flightRepository.updateFlightFrequencyNotExist(flight.getFlightNo());
                }else if(null!=flights&&"共享航班".equals(flights.getFlightRequency())){
                    flightRepository.updateFlightFrequencyShareCode(flight.getFlightNo());
                }else{
                    BeanUtils.copyProperties(flights,conditions);
                    flightRepository.updateFlightByCondition(conditions);
                }
            }

            if (flightList.size() < 200) {
                select = false;
            }
            pageindex++;
        }
    }
}
