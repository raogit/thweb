/**
 * 
 */
package com.tianhong.service.sys;

import java.util.List;

import com.tianhong.domain.sys.SysRoleMenu;

/**
 * @author Administrator
 *
 */
public interface SysRoleMenuService {

	List<SysRoleMenu> getSysRoleMenus(int roleId) throws Exception;
}
