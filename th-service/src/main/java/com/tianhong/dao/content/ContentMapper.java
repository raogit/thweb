package com.tianhong.dao.content;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.content.Content;

public interface ContentMapper extends BaseMapper<Content> {

	int updateByPrimaryKeyWithBLOBs(Content record);

	Content selectByMenuId(int menuId) throws Exception;

}