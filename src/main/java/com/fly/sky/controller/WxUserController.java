package com.fly.sky.controller;

import com.fly.sky.condition.WxUserCondition;
import com.fly.sky.domain.WxUser;
import com.fly.sky.service.WxUserService;
import com.fly.sky.util.JsonUtil;
import com.fly.sky.util.OpenidUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:56
 * @Description
 */

@RestController
@RequestMapping("/wxUser")
//@Api用于controller类上，说明该类的作用
@Api(tags = "用户接口")
@Slf4j
public class WxUserController {

    @Resource
    private WxUserService wxUserService;

    @PostMapping(value="saveWxUser")
    @ApiOperation(value = "保存用户", notes = "保存用户")
    public void saveWxUser(@RequestBody WxUserCondition condition) throws Exception {
        String logTitle = "=保存用户=";
        log.info("{} - 参数：saveWxUser={}", logTitle, JsonUtil.toJSONString(condition));
        //获取openid
       String openId= OpenidUtil.getOpenid(
                condition.getCode(),
                condition.getEncryptedData(),
                condition.getIv());
        condition.setOpenId(openId);
        if(StringUtils.isEmpty(openId)){
            wxUserService.saveWxUser(condition);
        }else{
            WxUser wxUser=wxUserService.selectUserByOpenId(openId);
            if(null==wxUser){
                wxUserService.saveWxUser(condition);
            }else{
                //修改时间
                wxUserService.updateWxUserTime(openId);
            }
        }
    }
}
