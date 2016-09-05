package com.tianhong.dao.store;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.store.ServiceJoinAbout;

public interface ServiceJoinAboutMapper extends BaseMapper<ServiceJoinAbout> {

	int updateByPrimaryKeyWithBLOBs(ServiceJoinAbout record);
}