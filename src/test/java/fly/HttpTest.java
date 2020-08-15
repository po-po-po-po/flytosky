package fly;

import com.fly.sky.AirportApplication;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.pythons.HttpRequestUtils;
import com.fly.sky.service.FlightService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
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
public class HttpTest {



    @Test
    public void tesHttp() throws Exception {
        HttpRequestUtils.send("CA1225");
    }

}
