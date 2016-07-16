/**  
 * @Title: SysUserMenuService.java
 * @Package com.tianhong.service.sys
 * @Description: 描述
 * @author xing
 * @date 2016年7月16日 上午11:38:53
 */
package com.tianhong.service.sys;

import com.tianhong.domain.sys.SysUserMenu;

/**
 * ClassName: SysUserMenuService
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月16日 上午11:38:53
 */
public interface SysUserMenuService {

	SysUserMenu addSysUserMenu(int userId, int menuId) throws Exception;
}
