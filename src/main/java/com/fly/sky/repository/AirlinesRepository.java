package com.fly.sky.repository;


import com.fly.sky.condition.AirlineCondition;
import com.fly.sky.domain.Airlines;
import com.fly.sky.vo.AirlinesVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Auther wangzekun
 * @Date 2020/7/28 09:51
 * @Description
 */

public interface AirlinesRepository {

    List<Airlines> findAirlinesByCondition(AirlineCondition condition);

    Airlines findAirlinesById(Integer id);

    List<Airlines> selectAirlineListByAirlinesCodeList(@Param("airlinesCodeList") List airlinesCodeList);

    List<AirlinesVo> findAirlinesIndex(AirlineCondition condition);

    Airlines findAirlinesByAirlinesCode(String airlinesCode);

    AirlinesVo findAirlinesHNAFLIGHTNO(AirlineCondition condition);

    AirlinesVo findAirlinesHNAAIRWAYNO(AirlineCondition condition);
}
