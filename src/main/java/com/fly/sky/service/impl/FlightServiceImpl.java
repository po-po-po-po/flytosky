package com.fly.sky.service.impl;


import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Airlines;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.Airway;
import com.fly.sky.domain.Flight;
import com.fly.sky.enums.AirlinesEnum;
import com.fly.sky.pythons.IpPortUtil;
import com.fly.sky.pythons.XcFlightUtil;
import com.fly.sky.repository.AirlinesRepository;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.service.FlightService;
import com.fly.sky.util.PagedList;
import com.fly.sky.util.WeekUtil;
import com.fly.sky.vo.*;
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

    @Resource
    AirportRepository airportRepository;

    @Resource
    AirlinesRepository airlinesRepository;

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



    public PagedList<Flight> findFlightsForSUIXINFEI(FlightCondition condition) {
        PagedList<Flight> listPagedList = new PagedList<Flight>();
        PageHelper.startPage(condition.getPageNo(), condition.getPageSize());
        List<Flight>  flightList=flightRepository.findFlightsForSUIXINFEI(condition);
        //对list进行处理
        flightList.stream().forEach(f-> f.setFlightRequency(WeekUtil.getWeekName(f.getFlightRequency())));
        PageInfo pageInfo = new PageInfo(flightList);
        listPagedList.setPageNo(condition.getPageNo());
        listPagedList.setPageSize(condition.getPageSize());
        listPagedList.setData(flightList);
        listPagedList.setTotalRows(pageInfo.getTotal());
        return listPagedList;
    }

    @Override
    public List<Airport> findStartHX(FlightCondition condition) {
        return flightRepository.findStartHX(condition);
    }

    @Override
    public List<Airport> findEndHX(FlightCondition condition) {
        return flightRepository.findEndHX(condition);
    }


    public List<FlightDetail> findAllFlightsByAirline(FlightCondition condition) {
        if(null!=condition&& StringUtils.isNotEmpty(condition.getAirlinesSelectId())){
            condition.setAirlinesCode(AirlinesEnum.getAirlineCode(condition.getAirlinesSelectId()));
        }
        //机场处理
        if(StringUtils.isNotEmpty(condition.getFlightNameStart())){
            condition.setAirportNameStart(condition.getFlightNameStart().replace("机场",""));
        }
        if(StringUtils.isNotEmpty(condition.getFlightNameEnd())){
            condition.setAirportNameEnd(condition.getFlightNameEnd().replace("机场",""));
        }
        condition.setFlightNameStart(null);
        condition.setFlightNameEnd(null);
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


    public void synchronizeFeiChangzhunFlight(FlightCondition condition) throws Exception {
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
            String[] data= IpPortUtil.getIpAndPort();
            for (int i = 0; i < flightList.size(); i++) {
                Flight flight= flightList.get(i);
                //获取航班数据信息
                List<Flight> flightLists= XcFlightUtil.findFlightByFlightCode(flight.getFlightNo(),"20201001",data[0], Integer.parseInt(data[1]));
                if(null==flightLists){
                    System.out.println("没有爬取到数据稍后再爬!!!!!!!!!!!");
                }else{
                    System.out.println("爬取数据是"+flightLists);
                }
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

    @Override
    public PagedList<Flight> findMUFlights6(FlightCondition condition) {
        PagedList<Flight> listPagedList = new PagedList<Flight>();
        PageHelper.startPage(condition.getPageNo(), condition.getPageSize());
        List<Flight>  airportList=flightRepository.findMUFlights6(condition);
        PageInfo pageInfo = new PageInfo(airportList);
        listPagedList.setPageNo(condition.getPageNo());
        listPagedList.setPageSize(condition.getPageSize());
        listPagedList.setData(airportList);
        listPagedList.setTotalRows(pageInfo.getTotal());
        return listPagedList;
    }

    @Override
    public PagedList<Flight> findMUFlights7(FlightCondition condition) {
        PagedList<Flight> listPagedList = new PagedList<Flight>();
        PageHelper.startPage(condition.getPageNo(), condition.getPageSize());
        List<Flight>  airportList=flightRepository.findMUFlights7(condition);
        PageInfo pageInfo = new PageInfo(airportList);
        listPagedList.setPageNo(condition.getPageNo());
        listPagedList.setPageSize(condition.getPageSize());
        listPagedList.setData(airportList);
        listPagedList.setTotalRows(pageInfo.getTotal());
        return listPagedList;
    }

    @Override
    public PagedList<Flight> findMUFlights8BEFORE(FlightCondition condition) {
        PagedList<Flight> listPagedList = new PagedList<Flight>();
        PageHelper.startPage(condition.getPageNo(), condition.getPageSize());
        List<Flight>  airportList=flightRepository.findMUFlights8BEFORE(condition);
        PageInfo pageInfo = new PageInfo(airportList);
        listPagedList.setPageNo(condition.getPageNo());
        listPagedList.setPageSize(condition.getPageSize());
        listPagedList.setData(airportList);
        listPagedList.setTotalRows(pageInfo.getTotal());
        return listPagedList;
    }

    @Override
    public PagedList<Flight> findMUFlights8AFTER(FlightCondition condition) {
        PagedList<Flight> listPagedList = new PagedList<Flight>();
        PageHelper.startPage(condition.getPageNo(), condition.getPageSize());
        List<Flight>  airportList=flightRepository.findMUFlights8AFTER(condition);
        PageInfo pageInfo = new PageInfo(airportList);
        listPagedList.setPageNo(condition.getPageNo());
        listPagedList.setPageSize(condition.getPageSize());
        listPagedList.setData(airportList);
        listPagedList.setTotalRows(pageInfo.getTotal());
        return listPagedList;
    }

    @Override
    public PagedList<Flight> findMUFlightsXIYU(FlightCondition condition) {
        PagedList<Flight> listPagedList = new PagedList<Flight>();
        PageHelper.startPage(condition.getPageNo(), condition.getPageSize());
        List<Flight>  airportList=flightRepository.findMUFlightsXIYU(condition);
        PageInfo pageInfo = new PageInfo(airportList);
        listPagedList.setPageNo(condition.getPageNo());
        listPagedList.setPageSize(condition.getPageSize());
        listPagedList.setData(airportList);
        listPagedList.setTotalRows(pageInfo.getTotal());
        return listPagedList;
    }

    @Override
    public PagedList<Flight> findMUFlightsDAWAN(FlightCondition condition) {
        PagedList<Flight> listPagedList = new PagedList<Flight>();
        PageHelper.startPage(condition.getPageNo(), condition.getPageSize());
        List<Flight>  airportList=flightRepository.findMUFlightsDAWAN(condition);
        PageInfo pageInfo = new PageInfo(airportList);
        listPagedList.setPageNo(condition.getPageNo());
        listPagedList.setPageSize(condition.getPageSize());
        listPagedList.setData(airportList);
        listPagedList.setTotalRows(pageInfo.getTotal());
        return listPagedList;
    }


    @Override
    public List<Flight> find9CFlightsZHE(FlightCondition condition) {
        return flightRepository.find9CFlightsZHE(condition);
    }

    @Override
    public List<FlightDetail> findHX(FlightCondition condition){
        return flightRepository.findHX(condition);
    }

    @Override
    public List<Airport> findAirportsForStartAndEnd(FlightCondition condition) {
        return airportRepository.findAirportsForStartAndEnd(condition);
    }

    @Override
    public FlightList findHX2HB(FlightCondition condition) {
        FlightList flightLists=new FlightList();
        //航班信息列表
        List<FlightDetail>  flightList=flightRepository.findHX2HB(condition);
        //对list进行处理
        flightList.stream().forEach(f-> f.setFlightRequency(WeekUtil.getWeekName(f.getFlightRequency())));
        flightLists.setFlightList(flightList);

        //航空公司信息
        Airlines airlines=airlinesRepository.findAirlinesByAirlinesCode(condition.getAirlinesCode());
        flightLists.setAirLines(airlines);

        //航线信息
        Airway airway=new Airway();
        airway.setAirwayNameStart(airportRepository.findAirportByCode(condition.getAirportNameStartCode()).getAirportAbbreviate());
        airway.setAirwayNameEndCode(condition.getAirportNameEndCode());
        airway.setAirwayNameEnd(airportRepository.findAirportByCode(condition.getAirportNameEndCode()).getAirportAbbreviate());
        airway.setAirwayNameStartCode(condition.getAirportNameStartCode());
        flightLists.setAirway(airway);


        return flightLists;
    }


    @Override
    public AirportDetail findAIRPORTSHB(FlightCondition condition) {
        AirportDetail airportDetail=new AirportDetail();
        //机场航班信息列表
        List<FlightDetail>  flightList=flightRepository.findAIRPORTSHB(condition);
        //对list进行处理
        flightList.stream().forEach(f-> f.setFlightRequency(WeekUtil.getWeekName(f.getFlightRequency())));
        airportDetail.setFlightDetailList(flightList);

        //机场信息
        Airport airport=airportRepository.findAirportByCode(condition.getAirportNameStartCode());
        airportDetail.setAirport(airport);

        return airportDetail;
    }



    public AirlinesDetail findFlights67(FlightCondition condition){

        if(StringUtils.isNotEmpty(condition.getFlightRequency())){
            condition.setSortId(Integer.parseInt(condition.getFlightRequency()));
        }

        if("不限".equals(condition.getFlightNameStart())){
            condition.setFlightNameStart("");
        }
        if("不限".equals(condition.getFlightNameEnd())){
            condition.setFlightNameEnd("");
        }
        if("1".equals(condition.getAirlinesCode())){
            condition.setAirlinesCode("");
        }
        AirlinesDetail detail=new AirlinesDetail();
        //机场处理
        if(StringUtils.isNotEmpty(condition.getFlightNameStart())){
            condition.setAirportNameStart(condition.getFlightNameStart().replace("机场",""));
        }
        if(StringUtils.isNotEmpty(condition.getFlightNameEnd())){
            condition.setAirportNameEnd(condition.getFlightNameEnd().replace("机场",""));
        }
        //查询航司能飞往的出发机场列表
        List<Airport> airportStartList=flightRepository.findFlights67GroupByFlightNameStartByAirlinesCode();
        //如果出发机场和到达机场都是空 那就指定一个
        if(StringUtils.isEmpty(condition.getFlightNameStart())&&StringUtils.isEmpty(condition.getFlightNameEnd())){
            if(null!=airportStartList.get(0)){
                condition.setAirportNameStart(airportStartList.get(0).getAirportAbbreviate());
            }
        }
        //查询航司能飞往的航班列表
        List<FlightDetail> flightList=flightRepository.findFlightsAndAirlinesByCondition(condition);
        detail.setFlightList(flightList);
        detail.setAirportStartList(airportStartList);
        //第一次进来 默认查询该航司的基地数据
        if(null==condition.getFlightNameStart()&&!airportStartList.isEmpty()){
            if(null!=airportStartList.get(0)){
                condition.setAirportNameStart(airportStartList.get(0).getAirportAbbreviate());
            }
        }
        //出发机场和到达机场必须选一个 如果不选那默认给出发机场基地机场
        if("".equals(condition.getFlightNameStart())&&"".equals(condition.getFlightNameEnd())){
            if(null!=airportStartList.get(0)){
                condition.setAirportNameStart(airportStartList.get(0).getAirportAbbreviate());
            }
        }
        //查询航司能飞往的到达机场列表
        List<Airport> airportEndList=flightRepository.findFlights67GroupByFlightNameEndByAirlinesCode();
        detail.setAirportEndList(airportEndList);
        //查询航司信息
        Airlines airlines=airlinesRepository.findAirlinesByAirlinesCode("MU");
        detail.setAirlines(airlines);
        List<FlightDetail> airwayList=flightRepository.findFlights67AirwayNumberByAirlinesCode(condition);
        detail.setAirwayList(airwayList);
        detail.setFlightCondition(condition);
        return detail;
    }

}
