package com.fly.sky.pythons;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;

/**
 * description: Test
 * date: 2020/8/15 17:00
 * author: wangzekun
 * version: 1.0
 */
public class IpPortUtil {
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
