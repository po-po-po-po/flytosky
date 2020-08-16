package com.fly.sky.util;

/**
 * description: RegexUtil
 * date: 2020/8/16 9:28
 * author: wangzekun
 * version: 1.0
 */
public class RegexUtil {


    /**
     * @param number
     * @Description : 过滤出数字
     */
    public static String filterNumber(String number) {
        number = number.replaceAll("[^(0-9)]", "");
        return number;
    }

    /**
     * @param alph
     * @Description : 过滤出字母
     */
    public static String filterAlphabet(String alph) {
        alph = alph.replaceAll("[^(A-Za-z)]", "");
        return alph;
    }

    /**
     * @param chin
     * @Description : 过滤出中文
     */
    public static String filterChinese(String chin) {
        chin = chin.replaceAll("[^(\\u4e00-\\u9fa5)]", "");
        return chin;
    }

    /**
     * @param character
     * @return
     * @Description : 过滤出字母、数字和中文
     */
    public static String filter(String character) {
        character = character.replaceAll("[^(a-zA-Z0-9\\u4e00-\\u9fa5)]", "");
        return character;
    }
    /**
     * @param character
     * @return
     * @Description : 过滤出字母、数字和中文
     */
    public static String filterAlphabetAndNumber(String character) {
        character = character.replaceAll("[^(a-zA-Z0-9)]", "");
        return character;
    }
}