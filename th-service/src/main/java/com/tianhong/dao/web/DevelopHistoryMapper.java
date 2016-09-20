package com.tianhong.dao.web;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.web.DevelopHistory;

public interface DevelopHistoryMapper extends BaseMapper<DevelopHistory> {

	int updateByPrimaryKeyWithBLOBs(DevelopHistory record);

}