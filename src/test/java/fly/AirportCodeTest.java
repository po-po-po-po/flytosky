package fly;

import com.fly.sky.AirportApplication;
import com.fly.sky.condition.AirportCondition;
import com.fly.sky.condition.UserFlightCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.AirportCode;
import com.fly.sky.repository.AirportCodeRepository;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.repository.UserFlightRepository;
import com.fly.sky.service.FlightService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.CollectionUtils;

import java.util.List;


/**
 * description: FlightTest
 * date: 2020/8/15 12:10
 * author: wangzekun
 * version: 1.0
 */

@RunWith(SpringRunner.class)
@SpringBootTest(classes={AirportApplication.class})// 指定启动类
@Slf4j
public class AirportCodeTest {

    @Autowired
    FlightService flightService;


    @Autowired
    AirportCodeRepository airportCodeRepository;

    @Autowired
    AirportRepository airportRepository;

    @Autowired
    FlightRepository flightRepository;

    @Autowired
    UserFlightRepository userFlightRepository;


    @Test
    @Rollback(false)
    public void test() throws Exception {
        //获取机场列表
        List<Airport> airportsList1=airportRepository.findAirportsByCondition(new AirportCondition());
        List<Airport> airportsList2 = airportRepository.insertAirportCode();
        for (Airport airport2 : airportsList2) {
            for (Airport airport1 : airportsList1) {
                AirportCode airportCode=new AirportCode();
                airportCode.setDeptCode(airport2.getAirportCode());
                airportCode.setArrCode(airport1.getAirportCode());
                airportCode.setStatus("0");
                airportCode.setDeptName(airport2.getAirportName());
                airportCode.setArrName(airport1.getAirportLocation());
                log.info("插入机场code："+airportCode);
                airportCode.setStatus(null);
                List<AirportCode> airportCodesList= airportCodeRepository.findAirportCode(airportCode);
                if(CollectionUtils.isEmpty(airportCodesList)){
                    airportCodeRepository.insertAirportCode(airportCode);
                }
            }
        }
    }


    @Test
    @Rollback(false)
    public void test1() throws Exception {
        String deptCode="PEK";
        String arrCode="";
        //删除
        //flightRepository.deleteFlightByCode(deptCode,arrCode,"6");
        AirportCode airportCode=new AirportCode();
        airportCode.setDeptCode(deptCode);
        airportCode.setArrCode(arrCode);
        airportCode.setStatus("0");
        airportCodeRepository.insertAirportCode(airportCode);
    }


    @Test
    @Rollback(false)
    public void test3() throws Exception {
        //获取机场列表
        List<Airport> airportsList=airportRepository.findAirportsByCondition(new AirportCondition());
        for (Airport airport : airportsList) {
                AirportCode airportCode=new AirportCode();
                airportCode.setDeptCode(airport.getAirportCode());
                airportCode.setArrCode("CTU");
                airportCode.setStatus("0");
                airportCode.setDeptName(airport.getAirportName());
                airportCode.setArrName("成都双流");
                log.info("插入机场code："+airportCode);
                airportCodeRepository.insertAirportCode(airportCode);
        }
    }


    @Test
    @Rollback(false)
    public void test4() throws Exception {
        //获取机场列表
        List<Airport> airportsList=airportRepository.findAirportsByCondition(new AirportCondition());
        for (Airport airport : airportsList) {
            AirportCode airportCode=new AirportCode();
            airportCode.setDeptCode("SHA");
            airportCode.setArrCode(airport.getAirportCode());
            airportCode.setStatus("0");
            airportCode.setDeptName("上海虹桥");
            airportCode.setArrName(airport.getAirportName());
            log.info("插入机场code："+airportCode);
            airportCodeRepository.insertAirportCode(airportCode);
        }
    }




    @Test
    @Rollback(false)
    public void test5()  {
        //获取机场列表
        List<Airport> airportsList=airportRepository.findAirportsByCondition(new AirportCondition());
        for (Airport airport : airportsList) {
            String airportAbbreviate=airport.getAirportAbbreviate();
            UserFlightCondition condition=new UserFlightCondition();
            condition.setFlightNameEnd(airportAbbreviate);
            userFlightRepository.insertUserFlights(condition);
        }
    }

}
