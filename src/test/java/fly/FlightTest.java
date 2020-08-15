package fly;

import com.fly.sky.AirportApplication;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.domain.Flight;
import com.fly.sky.repository.FlightRepository;
import com.fly.sky.service.FlightService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.boot.test.autoconfigure.AutoConfigureMybatis;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringRunner;


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

    @Test
    @Rollback(false)
    public void testFlight() throws Exception {
        FlightCondition condition=new FlightCondition();
        flightService.synchronizeFlight(condition);
    }

}
