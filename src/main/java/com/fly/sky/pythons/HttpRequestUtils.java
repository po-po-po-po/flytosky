package com.fly.sky.pythons;

import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

/**
 * description: HttpRequestUtils
 * date: 2020/8/15 16:06
 * author: wangzekun
 * version: 1.0
 */
public class HttpRequestUtils {

    public static String send(String flightNumber)throws Exception{
        //获取ip和端口
        String url="http://http.9vps.com/getip.asp?username=13522715896&pwd=5fc61e8a197dfe289613f8d07fb1583f&geshi=1&fenge=1&fengefu=&getnum=1";
        String po=GetUrlData.getHttpRequestData(url);
        String[] split = po.split(":");
        String content="";
        // 创建httpget实例
        HttpGet httpGet = new HttpGet("http://www.variflight.com/flight/fnum/"+flightNumber.trim()+".html?AE71649A58c77&fdate="+20201001);
       // HttpGet httpGet=new HttpGet("http://www.variflight.com/flight/fnum/MU5138.html?AE71649A58c77");
        CloseableHttpClient client = setProxy(httpGet,
                split[0],//   "123.162.174.198",//
                Integer.parseInt(split[1]));//10001); //
        //设置请求头消息
        httpGet.setHeader("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36");
        // 执行http get请求  也可以使用psot
        CloseableHttpResponse response=client.execute(httpGet);
        // 获取返回实体
        if (response != null){
            HttpEntity entity = response.getEntity();
            if (entity != null){
                content= EntityUtils.toString(entity,"utf-8");
            }
        }
        //关闭response
        response.close();
        //关闭httpClient
        client.close();
        //Document doc = Jsoup.parse(content);
        //Elements flightDetail = doc.select("[class=\"li_com\"]");
        //Elements detailfly = flightDetail.select("[class=\"w150\"]");
        return content;
    }

    /**
     * 设置代理
     * @param httpGet
     * @param proxyIp
     * @param proxyPort
     * @return
     */
    public static CloseableHttpClient setProxy(HttpGet httpGet,String proxyIp,int proxyPort){
        // 创建httpClient实例
        CloseableHttpClient httpClient= HttpClients.createDefault();
        //设置代理IP、端口
        HttpHost proxy=new HttpHost(proxyIp,proxyPort,"http");
        //也可以设置超时时间   RequestConfig requestConfig = RequestConfig.custom().setProxy(proxy).setConnectTimeout(3000).setSocketTimeout(3000).setConnectionRequestTimeout(3000).build();
        RequestConfig requestConfig=RequestConfig.custom().setProxy(proxy).build();
        httpGet.setConfig(requestConfig);
        return httpClient;
    }
}
