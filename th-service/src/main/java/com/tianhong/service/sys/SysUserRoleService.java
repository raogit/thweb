/**  
 * @Title: SysUserRoleService.java
 * @Package com.tianhong.service.sys
 * @Description: 描述
 * @author xing
 * @date 2016年7月16日 上午11:39:05
 */
package com.tianhong.service.sys;

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

}
