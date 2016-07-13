package com.tianhong.dao.store;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.store.StoreNews;
import com.tianhong.domain.store.StoreNewsWithBLOBs;

public interface StoreNewsMapper extends BaseMapper<StoreNews> {

	int updateByPrimaryKeyWithBLOBs(StoreNewsWithBLOBs record);

}