package com.tianhong.dao.menu;

import java.util.List;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.menu.Menu;

public interface MenuMapper extends BaseMapper<Menu> {

	List<Menu> selectAllMenus() throws Exception;

}