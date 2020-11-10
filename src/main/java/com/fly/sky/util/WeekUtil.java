package com.fly.sky.util;

/**
 * @Auther wangzekun
 * @Date 2020/11/10 11:51
 * @Description
 */
public class WeekUtil {


    public static String getWeekName(String weekName){

        switch (weekName) {
            case "1":
                weekName="周一";
                break;
            case "2":
                weekName="周二";
                break;
            case "3":
                weekName="周三";
                break;
            case "4":
                weekName="周四";
                break;
            case "5":
                weekName="周五";
                break;
            case "6":
                weekName="周六";
                break;
            case "7":
                weekName="周日";
                break;
            default:
                weekName="周日";
                break;
        }

        return weekName;

    }
}
