package fly;

import com.fly.sky.AirportApplication;
import com.fly.sky.condition.AirwayCondition;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Airway;
import com.fly.sky.domain.Flight;
import com.fly.sky.pythons.SynchronizeTask;
import com.fly.sky.repository.AirwayRepository;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.service.FlightService;
import com.fly.sky.util.RegexUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.boot.test.autoconfigure.AutoConfigureMybatis;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;
import java.util.Timer;


/**
 * description: FlightTest
 * date: 2020/8/15 12:10
 * author: wangzekun
 * version: 1.0
 */

@RunWith(SpringRunner.class)
@SpringBootTest(classes={AirportApplication.class})// 指定启动类
public class FlightTest {

    @Autowired
    FlightService flightService;


    @Autowired
    FlightRepository flightRepository;


    @Test
    @Rollback(false)
    public void testFlight() throws Exception {
        //FlightCondition condition=new FlightCondition();
       // flightService.synchronizeFlight(condition);
    }



    @Test
    @Rollback(false)
    public void testFlightName() throws Exception {
        FlightCondition condition=new FlightCondition();
        //航班总数据
        int pageindex = 1;
        int pagesize =3500;
        int pageNo= (pageindex -1) * pagesize;
        condition.setPageNo(pageNo);
        condition.setPageSize(pagesize);
        List<Flight> flightList=flightRepository.findFlightsForSynchronize(condition);
        for (Flight flight : flightList) {
            Flight  flights=new  Flight();
            flights.setId(flight.getId());
            //获取airwayStart
            String flightStart=flight.getFlightNameStart();
            String flightEnd= flight.getFlightNameEnd();
            flights.setAirportNameStart(RegexUtil.filterChinese(flightStart));
            flights.setAirportNameEnd(RegexUtil.filterChinese(flightEnd));
            System.out.println(flight);
            flightRepository.updateAirportNameStartAndEnd(flights);
        }
    }


}
