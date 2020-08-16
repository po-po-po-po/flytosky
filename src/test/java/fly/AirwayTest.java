package fly;

import com.fly.sky.AirportApplication;
import com.fly.sky.condition.AirwayCondition;
import com.fly.sky.domain.Airway;
import com.fly.sky.repository.AirwayRepository;
import com.fly.sky.util.RegexUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;


/**
 * description: AirwayTest
 * date: 2020/8/15 12:10
 * author: wangzekun
 * version: 1.0
 */

@RunWith(SpringRunner.class)
@SpringBootTest(classes={AirportApplication.class})// 指定启动类
public class AirwayTest {

    @Autowired
    AirwayRepository airwayRepository;

    //@Test
    @Rollback(false)
    public void testAirway() throws Exception {
        AirwayCondition condition=new AirwayCondition();
        //航班总数据
        int pageindex = 1;
        int pagesize =1500;
        int pageNo= (pageindex -1) * pagesize;
        condition.setPageNo(pageNo);
        condition.setPageSize(pagesize);
        List<Airway>  airwayList=airwayRepository.findAirwaysForAirwayName(condition);
        for (Airway airway : airwayList) {
            condition.setId(airway.getId());
            //获取airwayStart
            String airwayStart=airway.getAirwayNameStart();
            String airwayEnd= airway.getAirwayNameEnd();
            condition.setAirwayNameStart(RegexUtil.filterChinese(airwayStart));
            condition.setAirwayNameEnd(RegexUtil.filterChinese(airwayEnd));
            airwayRepository.updateAirwayForAirwayName(condition);
        }
    }

    //@Test
    @Rollback(false)
    public void testRegex() throws Exception {
        String s="贵阳龙洞堡T2";
        System.out.println("------"+ RegexUtil.filterChinese(s));

    }


}
