/**  
 * @Title: SysUserRoleService.java
 * @Package com.tianhong.service.sys
 * @Description: 描述
 * @author xing
 * @date 2016年7月16日 上午11:39:05
 */
package com.tianhong.service.sys;

import java.util.List;

import com.tianhong.domain.sys.SysRole;
import com.tianhong.domain.sys.SysUserRole;
import com.tianhong.domain.user.User;
import com.tianhong.model.RoleMenu;

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

	List<SysRole> getUserRoles(int userId) throws Exception;

	List<RoleMenu> getRoleMenu(int userId) throws Exception;

	boolean saveRoleAndMenu(int userId, String roleIds, String menuIds, User currUser) throws Exception;
}
