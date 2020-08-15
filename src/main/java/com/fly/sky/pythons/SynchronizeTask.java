package com.fly.sky.pythons;

import com.fly.sky.AirportApplication;
import com.fly.sky.condition.FlightCondition;
import com.fly.sky.service.FlightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.test.context.junit4.SpringRunner;

import java.time.LocalDateTime;
import java.util.TimerTask;

/**
 * description: SynchronizeTask
 * date: 2020/8/15 18:37
 * author: wangzekun
 * version: 1.0
 */
@Configuration      //1.主要用于标记配置类，兼备Component的效果。
@EnableScheduling   // 2.开启定时任务
public class SynchronizeTask{
    @Autowired
    FlightService flightService;

    //3.添加定时任务
    @Scheduled(cron = "0/30 * * * * ?")
    //或直接指定时间间隔，例如：40秒
    //@Scheduled(fixedRate=5000)
    private void configureTasks() {
        System.err.println("执行静态定时任务时间: " + LocalDateTime.now());
        FlightCondition condition=new FlightCondition();
        try {
            flightService.synchronizeFlight(condition);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



}
