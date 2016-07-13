package com.tianhong.dao.store;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.store.Store;

public interface StoreMapper extends BaseMapper<Store> {

	int updateByPrimaryKeyWithBLOBs(Store record);

}