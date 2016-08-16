package com.tianhong.dao.content;

import java.util.List;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.content.Content;

public interface ContentMapper extends BaseMapper<Content> {

	int updateByPrimaryKeyWithBLOBs(Content record);

	Content selectByMenuId(int menuId) throws Exception;

	List<Content> findPage(Content content) throws Exception;

	int getCount(Content content) throws Exception;
}