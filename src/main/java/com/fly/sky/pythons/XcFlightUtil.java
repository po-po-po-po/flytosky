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
import java.util.*;


/**
 * 携程 航班爬取数据工具类
 * @Description:
 * @author：wangzekun
 * @CreatTime：2020年8月15日
 *
 */
public class XcFlightUtil {


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
    public static List<Flight> findFlightByFlightCode(String flightNumber, String nowDate ) throws Exception {
        List<Flight> flightList=new ArrayList<>();
       // String nowDate = new SimpleDateFormat("yyyyMMdd").format(new Date());
        //直接访问
        //Document doc = getDocument("http://www.variflight.com/flight/fnum/"+FlightNumber.trim()+".html?AE71649A58c77&fdate="+nowDate);
        //利用ip代理访问
        String content=HttpRequestUtils.send(flightNumber);
        if(StringUtils.isEmpty(content)){
            Flight flight = new Flight();
            flight.setFlightRequency("IP被封");
            flightList.add(flight);
            return flightList;
        }
        Document doc = Jsoup.parse(content);
        if(null == doc){
            throw new Exception("网络异常，请稍后再试！");
        }
        // 航班详情
        Elements flightDetail = doc.select("[class=\"li_com\"]");
        if(flightDetail.size()==0){
            return null;
        }
        Elements detailfly = flightDetail.select("[class=\"w150\"]");
        //判断经停航班 一个航班是5个 出发时间 出发机场 到达时间 到达机场 图片
        if(detailfly.size()==15){
            //说明是经停航班
            Flight flight1 = new Flight();
            //获取共享航班
            flight1.setFlightRequency(doc.select("[class=\"list_share\"]").text());
            flight1.setFlightNameStart(detailfly.get(1).text());//北京首都T2
            flight1.setFlightNameEnd( detailfly.get(3).text());//上海虹桥T2
            flight1.setFlightDate( detailfly.get(0).text()+"-"+detailfly.get(2).text());
            flight1.setFlightNo(flightNumber);
            flight1.setAirlinesCode(flightNumber.substring(0,2));
            flightList.add(flight1);
            //说明是经停航班
            Flight flight2 = new Flight();
            //获取共享航班
            flight2.setFlightRequency(doc.select("[class=\"list_share\"]").text());
            flight2.setFlightNameStart(detailfly.get(6).text());//北京首都T2
            flight2.setFlightNameEnd( detailfly.get(8).text());//上海虹桥T2
            flight2.setFlightDate( detailfly.get(0).text()+"-"+detailfly.get(12).text());
            flight2.setFlightNo(flightNumber);
            flight2.setFlightRequency("(经停"+detailfly.get(3).text()+")");
            flight2.setAirlinesCode(flightNumber.substring(0,2));
            flightList.add(flight2);
            //说明是经停航班
            Flight flight3 = new Flight();
            //获取共享航班
            flight3.setFlightRequency(doc.select("[class=\"list_share\"]").text());
            flight3.setFlightNameStart(detailfly.get(11).text());//北京首都T2
            flight3.setFlightNameEnd( detailfly.get(13).text());//上海虹桥T2
            flight3.setFlightDate( detailfly.get(10).text()+"-"+detailfly.get(12).text());
            flight3.setFlightNo(flightNumber);
            flight3.setAirlinesCode(flightNumber.substring(0,2));
            flightList.add(flight3);
        }else{
            Flight flight = new Flight();
            //获取共享航班
            flight.setFlightRequency(doc.select("[class=\"list_share\"]").text());
            flight.setFlightNameStart(detailfly.get(1).text());//北京首都T2
            flight.setFlightNameEnd( detailfly.get(3).text());//上海虹桥T2
            flight.setFlightDate( detailfly.get(0).text()+"-"+detailfly.get(2).text());
            flight.setFlightNo(flightNumber);
            flight.setAirlinesCode(flightNumber.substring(0,2));
            flightList.add(flight);
        }
        return flightList;
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

            System.out.println(findFlightByFlightCode("MU4276","20200817"));;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

}
