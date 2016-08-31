package com.tianhong.dao.market;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.market.Market;

public interface MarketMapper extends BaseMapper<Market> {

	int updateByPrimaryKeyWithBLOBs(Market record) throws Exception;

	Market selectByPrimaryKeyWithBLOBs(Integer id) throws Exception;

	Market selectByName(String name) throws Exception;
}