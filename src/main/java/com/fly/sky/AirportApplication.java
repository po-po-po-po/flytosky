package com.fly.sky;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:28
 * @Description
 */
@SpringBootApplication
@MapperScan("com.fly.sky.repository")//扫描的mapper
public class AirportApplication  extends SpringBootServletInitializer {
    public static void main(String[] args) {
        //启动spring应用程序
        SpringApplication.run(AirportApplication.class,args);
    }


    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(AirportApplication.class);
    }
}
