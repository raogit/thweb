/**  
 * @Title: SysUserMenuServiceImpl.java
 * @Package com.tianhong.service.sys.impl
 * @Description: 描述
 * @author xing
 * @date 2016年7月16日 上午11:39:41
 */
package com.tianhong.service.sys.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.sys.SysUserMenuMapper;
import com.tianhong.domain.sys.SysUserMenu;
import com.tianhong.service.sys.SysUserMenuService;

/**
 * ClassName: SysUserMenuServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月16日 上午11:39:41
 */
@Service("sysUserMenuService")
@Transactional
public class SysUserMenuServiceImpl implements SysUserMenuService {

	@Autowired
	private SysUserMenuMapper sysUserMenuMapper;

	public SysUserMenu addSysUserMenu(int userId, int menuId, int createId) throws Exception {
		SysUserMenu userMenu = new SysUserMenu();
		userMenu.setUserId(userId);
		userMenu.setMenuId(menuId);
		userMenu.setCreateId(createId);
		userMenu.setCreateTime(new Date());
		userMenu.setIsDeleted(false);
		sysUserMenuMapper.insertSelective(userMenu);
		return userMenu;
	}

}
