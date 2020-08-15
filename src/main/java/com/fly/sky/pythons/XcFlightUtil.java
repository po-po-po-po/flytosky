package com.fly.sky.pythons;

/**
 * description: XcFlightUtil
 * date: 2020/8/15 10:44
 * author: wangzekun
 * version: 1.0
 */

import com.alibaba.fastjson.JSONObject;
import com.fly.sky.domain.Flight;
import org.apache.commons.lang.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;


/**
 * 携程 航班爬取数据工具类
 * @Description:
 * @author：wangzekun
 * @CreatTime：2020年8月15日
 *
 */
public class XcFlightUtil {

    public static Map<String, Flight> cacheMap = new HashMap<String, Flight>();

    public static Timer cacheFlightTimer;

    static{
        clearCacheMap();
    }

    public static synchronized Timer getFlightTimer(){
        if(cacheFlightTimer == null){
            return cacheFlightTimer = new Timer();
        }else{
            return cacheFlightTimer;
        }
    }

    //定时清空航班缓存数据  立即清空 10分钟
    public static void clearCacheMap(){
        TimerTask timertask = new java.util.TimerTask() {
            @Override
            public void run() {
                cacheMap.clear();
            }
        };
        Timer cacheFlightTimer = getFlightTimer();
        cacheFlightTimer.schedule(timertask,0,600000);
    }

    public static  Document getDocument(String url) throws Exception {
        try {
            return Jsoup.connect(url).get();
        } catch (IOException e) {
            throw new Exception("获取航班信息异常，请自行查询航班数据！");
        }
    }

    /**
     * 根据航班号 爬取航班信息
     * @description:
     * @author:haoqingshuang
     * @CreateDate:2017年9月28日
     */
    public static Flight findFlightByFlightCode(String FlightNumber, String nowDate ) throws Exception {
        Flight flight = new Flight();
        if(StringUtils.isEmpty(FlightNumber)){
            throw new Exception("请输入航班号！");
        }

        for (String key : cacheMap.keySet()) {
            if(FlightNumber.equals(key)){
                if(null != cacheMap.get(key)){
                    //return cacheMap.get(key).getFlightJsonobject();
                }
            }
        }

       // String nowDate = new SimpleDateFormat("yyyyMMdd").format(new Date());
        Document doc = getDocument("http://www.variflight.com/flight/fnum/"+FlightNumber.trim()+".html?AE71649A58c77&fdate="+nowDate);
        if(null == doc){
            throw new Exception("网络异常，请稍后再试！");
        }
        // 航班详情
        Elements flightDetail = doc.select("[class=\"li_com\"]");
        Elements detailfly = flightDetail.select("[class=\"w150\"]");
        flight.setFlightNameStart(detailfly.get(1).text());//北京首都T2
        flight.setFlightNameEnd( detailfly.get(3).text());//上海虹桥T2
        flight.setFlightDate( detailfly.get(0).text()+"-"+detailfly.get(2).text());
        return flight;
    }

    public static String commonIsNull(Elements elements) {
        try {
            if(null != elements){
                if(null != elements.get(0)){
                    return elements.get(0).text();
                }
            }
            return "";
        } catch (Exception e) {
            return "";
        }
    }

    public static String commonDoubleIsNull(Elements elements) {
        try {
            StringBuilder sBuilder = new StringBuilder();
            if(null != elements){
                for (int i = 0; i < elements.size(); i++) {
                    if(null != elements.get(i)){
                        sBuilder.append(elements.get(i).text());
                    }
                }
            }
            return sBuilder.toString();
        } catch (Exception e) {
            return "";
        }
    }

    public static void main(String[] args) {
        try {
            System.out.println(findFlightByFlightCode("MU5110","20200817"));;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

}
