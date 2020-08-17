package fly;

import com.fly.sky.AirportApplication;
import com.fly.sky.condition.AirportCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.AirportCode;
import com.fly.sky.repository.AirportCodeRepository;
import com.fly.sky.repository.AirportRepository;
import com.fly.sky.service.FlightService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringRunner;

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


    @Test
    @Rollback(false)
    public void test() throws Exception {
        //获取机场列表
        List<Airport> airportsList1=airportRepository.findAirportsByCondition(new AirportCondition());
        List<Airport> airportsList2=airportRepository.findAirportsByCondition(new AirportCondition());
        for (Airport airport : airportsList1) {
            for (Airport airport1 : airportsList2) {
                AirportCode airportCode=new AirportCode();
                airportCode.setDeptCode(airport.getAirportCode());
                airportCode.setArrCode(airport1.getAirportCode());
                log.info("插入机场code："+airportCode);
                airportCodeRepository.insertAirportCode(airportCode);
            }
        }
        //List<AirportCode> LIST= airportCodeRepository.findAirportCode("SA","SA");
    }


}
