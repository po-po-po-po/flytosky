package com.fly.sky.util;

import com.alibaba.fastjson.JSONObject;
import org.apache.commons.lang3.StringUtils;

import java.util.HashMap;
import java.util.Map;

/**
 * @Auther wangzekun
 * @Date 2020/7/31 16:50
 * @Description
 */
public class OpenidUtil {
    //获取openid
    public static String getOpenid(String code, String encryptedData, String iv ) throws Exception{
        String value="";
        Map<String,Object> map = new HashMap<String,Object>();
        //code = "081ZExyD0qnP4j2LV5yD0hFLyD0ZExyK";
        //登录凭证不能为空
        if (code == null || code.length() == 0) {
            //map.put("status", 0);
            //map.put("msg", "code 不能为空");
            //System.out.println("map1:" + map);
            return value;
        }
        //小程序唯一标识   (在微信小程序管理后台获取)
        String wxspAppid = "wxefdbe22f1ca8f648";
        //小程序的 app secret (在微信小程序管理后台获取)
        String wxspSecret = "bc5495ce434a679f502481be29692353";
        //授权（必填）
        String grant_type = "authorization_code";
        //////////////// 1、向微信服务器 使用登录凭证 code 获取 session_key 和 openid ////////////////
        //请求参数
        String params = "appid=" + wxspAppid + "&secret=" + wxspSecret + "&js_code=" + code + "&grant_type=" + grant_type;
        //发送请求
        String sr = HttpRequest.sendGet("https://api.weixin.qq.com/sns/jscode2session", params);
        //解析相应内容（转换成json对象）
        JSONObject json = JSONObject.parseObject(sr);
        //System.out.println("--------------"+sr);
        //获取会话密钥（session_key）
        String session_key = json.get("session_key").toString();
        //用户的唯一标识（openid）
        String openid = (String) json.get("openid");
        //System.out.println("openid:" + openid);
        //////////////// 2、对encryptedData加密数据进行AES解密 ////////////////
        //try {
            //String result = AesUtil.decrypt(encryptedData, session_key, iv, "UTF-8");
           // if (null != result && result.length() > 0) {
            //    map.put("status", 1);
            //    map.put("msg", "解密成功");
             //   JSONObject userInfoJSON = JSONObject.parseObject(result);
                /*Map<String,Object> userInfo = new HashMap<String,Object>();
                userInfo.put("openId", userInfoJSON.get("openId"));
                userInfo.put("nickName", userInfoJSON.get("nickName"));
                userInfo.put("gender", userInfoJSON.get("gender"));
                userInfo.put("city", userInfoJSON.get("city"));
                userInfo.put("province", userInfoJSON.get("province"));
                userInfo.put("country", userInfoJSON.get("country"));
                userInfo.put("avatarUrl", userInfoJSON.get("avatarUrl"));
                userInfo.put("unionId", userInfoJSON.get("unionId"));
                map.put("userInfo", userInfo);
                System.out.println("map2:" + map);*/
               // if(null!=userInfoJSON.get("openId")){
                //    value=(String)userInfoJSON.get("openId");
              //  }
             //   return value;
       //   //  }
       // } catch (Exception e) {
       //     e.printStackTrace();
       // }
       // map.put("status", 0);
       // map.put("msg", "解密失败");
       // System.out.println("map3:" + map);
        return openid;
    }


}
