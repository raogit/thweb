package com.tianhong.dao.store;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.store.StoreNews;

public interface StoreNewsMapper extends BaseMapper<StoreNews> {

	int updateByPrimaryKeyWithBLOBs(StoreNews record);

}