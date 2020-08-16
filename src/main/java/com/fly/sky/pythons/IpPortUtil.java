package com.fly.sky.pythons;

import lombok.extern.slf4j.Slf4j;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URL;

/**
 * description: Test
 * date: 2020/8/15 17:00
 * author: wangzekun
 * version: 1.0
 */


@Slf4j
public class IpPortUtil {


    //获取代理ip和端口
    public static String[] getIpAndPort() {
        String urlPath="http://http.9vps.com/getip.asp?username=13522715896&pwd=5fc61e8a197dfe289613f8d07fb1583f&geshi=1&fenge=1&fengefu=&getnum=1";
        // 首先抓取异常并处理
        String returnString = "1";
        try{
            // 1  创建URL对象,接收用户传递访问地址对象链接
            URL url = new URL(urlPath);
            // 2 打开用户传递URL参数地址
            HttpURLConnection connect = (HttpURLConnection) url.openConnection();
            // 3 设置HTTP请求的一些参数信息
            connect.setRequestMethod("GET"); // 参数必须大写
            connect.connect();
            // 4 获取URL请求到的数据，并创建数据流接收
            InputStream isString = connect.getInputStream();
            // 5 构建一个字符流缓冲对象,承载URL读取到的数据
            BufferedReader isRead = new BufferedReader(new InputStreamReader(isString));
            // 6 输出打印获取到的文件流
            String str = "";
            while ((str = isRead.readLine()) != null) {
                str = new String(str.getBytes(),"UTF-8"); //解决中文乱码问题
                returnString = str;
            }
            // 7 关闭流
            isString.close();
            connect.disconnect();
        }catch(Exception e){
            e.printStackTrace();
        }
        String[] split = returnString.split(":");
        log.info("获取的代理IP："+split[0]+"，端口号："+split[1]);
        return split;
    }



    public static void main(String[] args){
        Socket connect = new Socket();
        try {
            connect.connect(new InetSocketAddress("27.190.75.255", 17014),100);
            boolean res = connect.isConnected();
            System.out.println("" + res);
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            try {
                connect.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

}
