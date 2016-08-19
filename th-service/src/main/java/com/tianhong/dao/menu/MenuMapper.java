package com.tianhong.dao.menu;

import java.util.List;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.menu.Menu;

public interface MenuMapper extends BaseMapper<Menu> {

	List<Menu> selectAllMenus() throws Exception;

	List<Menu> selectMenusByType(int type) throws Exception;

	Menu selectByName(String name) throws Exception;

	List<Menu> selectPage(Menu menu) throws Exception;

	int selectCount(Menu menu) throws Exception;

	Byte selectSort(int parentId) throws Exception;

	List<Menu> selectSameParent(int parentId) throws Exception;
}