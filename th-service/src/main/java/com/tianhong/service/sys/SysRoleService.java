/**  
 * @Title: SysRoleService.java
 * @Package com.tianhong.service.sys
 * @Description: 描述
 * @author xing
 * @date 2016年7月19日 下午2:26:25
 */
package com.tianhong.service.sys;

import com.tianhong.domain.sys.SysRole;

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

}
