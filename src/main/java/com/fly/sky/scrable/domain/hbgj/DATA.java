package com.fly.sky.scrable.domain.hbgj;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/9/1 11:47
 * @Description
 */
@Setter
@Getter
public class DATA {
    private String status;
    private String msg;
    private List<HBGJ> data;
}
