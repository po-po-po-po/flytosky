package com.fly.sky.controller;

import com.fly.sky.condition.AirportCondition;
import com.fly.sky.condition.WxMessageCondition;
import com.fly.sky.domain.Airport;
import com.fly.sky.domain.WxMessage;
import com.fly.sky.domain.WxUser;
import com.fly.sky.service.WxMessageService;
import com.fly.sky.service.WxUserService;
import com.fly.sky.util.JsonUtil;
import com.fly.sky.util.OpenidUtil;
import com.fly.sky.util.PagedList;
import com.fly.sky.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:56
 * @Description
 */

@RestController
@RequestMapping("/wxMessage")
//@Api用于controller类上，说明该类的作用
@Api(tags = "留言接口")
@Slf4j
public class WxMessageController {

    @Resource
    private WxMessageService wxMessageService;

    @PostMapping(value="saveWxMessage")
    @ApiOperation(value = "用户留言", notes = "用户留言")
    public void saveWxMessage(@RequestBody WxMessage wxMessage) throws Exception {
        String logTitle = "=用户留言=";
        log.info("{} - 参数：saveWxMessage={}", logTitle, JsonUtil.toJSONString(wxMessage));
        //获取openid
        String openId= OpenidUtil.getOpenid(
                wxMessage.getCode(),
                null,
                null);
        wxMessage.setOpenId(openId);
        wxMessageService.insertWxMessage(wxMessage);
    }

    @PostMapping("findAllWxMessage")
    @ApiOperation(value = "查询用户留言列表", notes = "查询用户留言列表")
    public ResponseResult<List<WxMessage>> findAllWxMessage(@RequestBody WxMessageCondition condition) throws Exception {
        String logTitle = "=查询用户留言列表=";
        log.info("{} - 参数：findAllWxMessage={}", logTitle, JsonUtil.toJSONString(condition));
        ResponseResult<List<WxMessage>> responseResult = new ResponseResult<>();
        responseResult.setData(wxMessageService.findWxMessageByCondition(condition));
        return responseResult;
    }

    @PostMapping(value="info")
    @ApiOperation(value = "更新说明", notes = "info")
    public ResponseResult<String> info()  {
        String logTitle = "=更新说明=";
        log.info("{} - 参数：saveWxMessage={}", logTitle);
        ResponseResult<String> responseResult = new ResponseResult<>();
        responseResult.setData("2020.08.28更新排名前11的机场数据。。。。。。");
        return responseResult;
    }


}
