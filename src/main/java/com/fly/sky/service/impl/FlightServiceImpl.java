package com.fly.sky.service.impl;


import com.fly.sky.condition.AirwayCondition;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Airway;
import com.fly.sky.domain.Flight;
import com.fly.sky.enums.AirlinesEnum;
import com.fly.sky.pythons.GetUrlData;
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
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.List;
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
        int pagesize =16;
        while (select) {
            int pageNo= (pageindex -1) * pagesize;
            condition.setPageNo(pageNo);
            condition.setPageSize(pagesize);
            List<Flight> flightList= flightRepository.findFlightsForSynchronize(condition);
            //获取代理信息  要放在循环的前面 这样才能不浪费资源
            //获取ip和端口
            String url="http://http.9vps.com/getip.asp?username=13522715896&pwd=5fc61e8a197dfe289613f8d07fb1583f&geshi=1&fenge=1&fengefu=&getnum=1";
            String po= GetUrlData.getHttpRequestData(url);
            String[] split = po.split(":");
            System.out.println("获取的代理IP："+split[0]+"，端口号："+split[1]);
            for (int i = 0; i < flightList.size(); i++) {
                Flight flight= flightList.get(i);
                //获取航班数据信息
                List<Flight> flightLists= XcFlightUtil.findFlightByFlightCode(flight.getFlightNo(),"20201001",split[0], Integer.parseInt(split[1]));
                System.out.println(flightLists);
                //如果flights的数据是空  那说明这个航班没有数据 那备注不存在
                if(CollectionUtils.isEmpty(flightLists)){
                    flightRepository.updateFlightFrequencyNotExist(flight.getFlightNo());
                }else{
                    //说明没有经停航班
                    if(flightLists.size()==1){
                        FlightCondition conditions=new FlightCondition();
                        Flight flights=flightLists.get(0);
                        if(null!=flights&&"共享航班".equals(flights.getFlightRequency())){
                            //共享航班删除数据
                            flightRepository.deleteFlightByFlightNo(flight.getFlightNo());
                            //flightRepository.updateFlightFrequencyShareCode(flight.getFlightNo());
                        }else if(null!=flights&&"IP被封".equals(flights.getFlightRequency())){
                            //flightRepository.updateFlightFrequencyShareCode(flight.getFlightNo());
                        }else{
                            flightRepository.deleteFlightByFlightNo(flight.getFlightNo());
                           // BeanUtils.copyProperties(flights,conditions);
                            flightRepository.insertFlight(flights);
                        }
                    }else{
                        //说明是经停航班
                        flightRepository.deleteFlightByFlightNo(flight.getFlightNo());
                        for (Flight flightsss : flightLists) {
                            flightRepository.insertFlight(flightsss);
                        }
                        
                    }

                }
            }

            if (flightList.size() < 20) {
                select = false;
            }
            pageindex++;
        }
    }
}
