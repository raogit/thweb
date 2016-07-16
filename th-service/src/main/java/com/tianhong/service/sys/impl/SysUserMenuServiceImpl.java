/**  
 * @Title: SysUserMenuServiceImpl.java
 * @Package com.tianhong.service.sys.impl
 * @Description: 描述
 * @author xing
 * @date 2016年7月16日 上午11:39:41
 */
package com.tianhong.service.sys.impl;

import java.util.Date;

import com.tianhong.domain.sys.SysUserMenu;
import com.tianhong.service.sys.SysUserMenuService;

/**
 * ClassName: SysUserMenuServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月16日 上午11:39:41
 */
public class SysUserMenuServiceImpl implements SysUserMenuService {

	public SysUserMenu addSysUserMenu(int userId, int menuId) throws Exception {
		SysUserMenu userMenu = new SysUserMenu();
		userMenu.setUserId(userId);
		userMenu.setMenuId(menuId);
		userMenu.setCreateTime(new Date());
		userMenu.setIsDeleted(false);
		return null;
	}

}
