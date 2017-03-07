package com.tianhong.dao.web;

import java.util.List;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.web.DevelopHistory;

public interface DevelopHistoryMapper extends BaseMapper<DevelopHistory> {

	int updateByPrimaryKeyWithBLOBs(DevelopHistory record);

	List<DevelopHistory> findInvestmentList(DevelopHistory developHistory) throws Exception;

	List<DevelopHistory> findCommomWealPage(DevelopHistory developHistory) throws Exception;

}