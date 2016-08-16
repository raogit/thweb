/**  
 * @Title: SysMenuService.java
 * @Package com.tianhong.service.sys
 * @Description: 描述
 * @author xing
 * @date 2016年8月16日 上午10:34:04
 */
package com.tianhong.service.sys;

import java.util.List;

import com.tianhong.domain.menu.Menu;

/**
 * ClassName: SysMenuService
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月16日 上午10:34:04
 */
public interface SysMenuService {
	List<Menu> getPageRoles(Menu menu) throws Exception;

	Menu getByPrimaryKey(int id) throws Exception;

	Menu insertSelective(Menu record) throws Exception;

	boolean updateByPrimaryKeySelective(Menu record) throws Exception;

	List<Menu> getAllMenus() throws Exception;

	Menu getByName(String name) throws Exception;

}
