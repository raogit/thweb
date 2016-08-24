package com.tianhong.dao.market;

import com.tianhong.domain.market.MarketNews;

public interface MarketNewsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MarketNews record);

    int insertSelective(MarketNews record);

    MarketNews selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MarketNews record);

    int updateByPrimaryKeyWithBLOBs(MarketNews record);

    int updateByPrimaryKey(MarketNews record);
}