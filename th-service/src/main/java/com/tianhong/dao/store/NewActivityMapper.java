package com.tianhong.dao.store;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.store.NewActivity;

public interface NewActivityMapper extends BaseMapper<NewActivity> {

	NewActivity selectByCategoryId(Integer categoryId) throws Exception;

	
}