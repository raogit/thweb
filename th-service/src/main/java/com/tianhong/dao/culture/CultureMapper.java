package com.tianhong.dao.culture;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.culture.Culture;

public interface CultureMapper extends BaseMapper<Culture> {

	int updateByPrimaryKeyWithBLOBs(Culture record) throws Exception;

	Culture selectByMenuId(int menuId) throws Exception;
}