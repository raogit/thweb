/**  
 * @Title: MenuService.java
 * @Package com.tianhong.service.impl
 * @Description: 描述
 * @author xing
 * @date 2016年7月13日 下午4:55:23
 */
package com.tianhong.service.menu;

import java.util.List;

import com.tianhong.domain.menu.Menu;

/**
 * ClassName: MenuService
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月13日 下午4:55:23
 */
public interface MenuService {
	byte getSort(int parentId) throws Exception;

	Menu getPage(Menu menu) throws Exception;

	Menu getByPrimaryKey(int id) throws Exception;

	Menu insertSelective(Menu record) throws Exception;

	boolean updateByPrimaryKeySelective(Menu record) throws Exception;

	Menu getByName(String name) throws Exception;

	List<Menu> getAllMenus() throws Exception;

	List<Menu> getMenusByType(int type) throws Exception;

	boolean addUserAuth(int userId, String roleIds, String menuIds) throws Exception;
}
