package com.tianhong.dao.store;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.store.StoreSuggest;

public interface StoreSuggestMapper extends BaseMapper<StoreSuggest> {

	int updateByPrimaryKeyWithBLOBs(StoreSuggest record);

}