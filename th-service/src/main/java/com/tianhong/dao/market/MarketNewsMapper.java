package com.tianhong.dao.market;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.market.MarketNews;

public interface MarketNewsMapper extends BaseMapper<MarketNews> {

	int updateByPrimaryKeyWithBLOBs(MarketNews record);

	MarketNews selectByPrimaryKeyWithBLOBs(Integer id) throws Exception;
}