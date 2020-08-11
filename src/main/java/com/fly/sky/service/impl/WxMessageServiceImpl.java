package com.fly.sky.service.impl;


import com.fly.sky.condition.WxMessageCondition;
import com.fly.sky.domain.WxMessage;
import com.fly.sky.repository.WxMessageRepository;
import com.fly.sky.service.WxMessageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:55
 * @Description
 */

@Service("wxMessageService")
public class WxMessageServiceImpl implements WxMessageService {

    @Resource
    WxMessageRepository wxMessageRepository;


    @Override
    public void insertWxMessage(WxMessage wxMessage) {
        //wxMessage.setCreateTime(new Date());
        wxMessage.setStatus(0);
        wxMessageRepository.insertWxMessage(wxMessage);
    }

    @Override
    public List<WxMessage> findWxMessageByCondition(WxMessageCondition condition) {
        return wxMessageRepository.findWxMessageByCondition(condition);
    }
}
