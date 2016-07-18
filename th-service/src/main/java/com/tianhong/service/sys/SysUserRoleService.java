/**  
 * @Title: SysUserRoleService.java
 * @Package com.tianhong.service.sys
 * @Description: 描述
 * @author xing
 * @date 2016年7月16日 上午11:39:05
 */
package com.tianhong.service.sys;

import java.util.List;

import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.sys.SysUserRole;

/**
 * ClassName: SysUserRoleService
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月16日 上午11:39:05
 */
public interface SysUserRoleService {

	SysUserRole addSysUserRole(int userId, int roleId, int createId) throws Exception;

	List<SysUserRole> getSysUserRoles(int userId) throws Exception;

	List<Menu> getUserMenu(int userId) throws Exception;

}
