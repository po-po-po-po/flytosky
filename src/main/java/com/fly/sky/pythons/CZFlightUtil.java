package com.fly.sky.pythons;


import com.fly.sky.domain.Flight;
import java.util.ArrayList;
import java.util.List;


/**
 * 南航 航班爬取数据工具类
 * @Description:
 * @author：wangzekun
 * @CreatTime：2020年8月15日
 *
 */
public class CZFlightUtil {

    public static List<Flight> scrableCZ(String param) throws Exception {
        //抓取CZ地址
        String url="https://b2c.csair.com/portal/minPrice/queryMinPriceInSeven";
        param="{\"arr\":\"\",\"dep\":\"\",\"depCity\":\"PEK\",\"arrCity\":\"CTU\",\"flightDate\":\"2020-09-26\",\"adultNum\":\"1\",\"childNum\":\"0\",\"infantNum\":\"0\",\"cabinOrder\":\"0\",\"airLine\":\"1\",\"flyType\":\"3\",\"international\":\"0\",\"action\":\"0\",\"segType\":\"1\",\"cache\":\"0\",\"channel\":\"B2CPC1\"}";
        System.out.println("请求参数是："+param);
        List<Flight> flightList=new ArrayList<>();
        //利用ip代理访问 获取代理ip和端口
        String ipAndPort[]=IpPortUtil.getIpAndPort();
        String content=HttpRequestUtils.sendPost(ipAndPort[0],ipAndPort[1],url,param);
        System.out.println("爬取南航的数据是："+content);
        return flightList;
    }


}
