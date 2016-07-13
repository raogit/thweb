package com.tianhong.dao.investor;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.investor.Investor;

public interface InvestorMapper extends BaseMapper<Investor> {

	int updateByPrimaryKeyWithBLOBs(Investor record);

}