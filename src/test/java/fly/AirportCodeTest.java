package fly;

import com.fly.sky.AirportApplication;
import com.fly.sky.domain.AirportCode;
import com.fly.sky.repository.AirportCodeRepository;
import com.fly.sky.service.FlightService;
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
public class AirportCodeTest {

    @Autowired
    FlightService flightService;


    @Autowired
    AirportCodeRepository airportCodeRepository;


    @Test
    @Rollback(false)
    public void test() throws Exception {
        List<AirportCode> LIST= airportCodeRepository.findAirportCode("SA","SA");
        System.out.println(LIST);
    }


}
