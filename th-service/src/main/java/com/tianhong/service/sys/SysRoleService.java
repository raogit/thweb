/**  
 * @Title: SysRoleService.java
 * @Package com.tianhong.service.sys
 * @Description: 描述
 * @author xing
 * @date 2016年7月19日 下午2:26:25
 */
package com.tianhong.service.sys;

import java.util.List;

import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.sys.SysRole;
import com.tianhong.domain.user.User;

/**
 * ClassName: SysRoleService
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月19日 下午2:26:25
 */
public interface SysRoleService {

	SysRole getPageRoles(SysRole role) throws Exception;

	SysRole getByPrimaryKey(int id) throws Exception;

	SysRole insertSelective(SysRole record) throws Exception;

	boolean updateByPrimaryKeySelective(SysRole record) throws Exception;

	List<SysRole> getAllRoles() throws Exception;

	SysRole getByName(String roleName) throws Exception;

	List<Menu> getRoleMenus(int roleId) throws Exception;

	boolean insertRoleMenus(int roleId, String menuIds, User currUser) throws Exception;
}
