package com.tianhong.dao.culture;

import java.util.List;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.culture.Culture;

public interface CultureMapper extends BaseMapper<Culture> {

	int updateByPrimaryKeyWithBLOBs(Culture record) throws Exception;

	Culture selectByMenuId(int menuId) throws Exception;

	List<Culture> findPage(Culture culture) throws Exception;

	int getCount(Culture culture) throws Exception;
}