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


    public static String getWeekCode(String weekName){

        switch (weekName) {
            case "周一":
                weekName="1";
                break;
            case "周二":
                weekName="2";
                break;
            case "周三":
                weekName="3";
                break;
            case "周四":
                weekName="4";
                break;
            case "周五":
                weekName="5";
                break;
            case "周六":
                weekName="6";
                break;
            case "周日":
                weekName="7";
                break;
            default:
                weekName="7";
                break;
        }

        return weekName;

    }
}
