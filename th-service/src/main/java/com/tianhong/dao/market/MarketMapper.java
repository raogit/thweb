package com.tianhong.dao.market;

import com.tianhong.domain.market.Market;

public interface MarketMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Market record);

    int insertSelective(Market record);

    Market selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Market record);

    int updateByPrimaryKeyWithBLOBs(Market record);

    int updateByPrimaryKey(Market record);
}