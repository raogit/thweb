/**  
 * @Title: SysUserRoleServiceImpl.java
 * @Package com.tianhong.service.sys.impl
 * @Description: 描述
 * @author xing
 * @date 2016年7月16日 上午11:39:22
 */
package com.tianhong.service.sys.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.sys.SysRoleMenuMapper;
import com.tianhong.dao.sys.SysUserMenuMapper;
import com.tianhong.dao.sys.SysUserRoleMapper;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.sys.SysRoleMenu;
import com.tianhong.domain.sys.SysUserMenu;
import com.tianhong.domain.sys.SysUserRole;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.sys.SysUserRoleService;

/**
 * ClassName: SysUserRoleServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月16日 上午11:39:22
 */
@Service("sysUserRoleService")
@Transactional
public class SysUserRoleServiceImpl implements SysUserRoleService {

	@Autowired
	private SysUserRoleMapper sysUserRoleMapper;
	@Autowired
	private SysUserMenuMapper sysUserMenuMapper;
	@Autowired
	private SysRoleMenuMapper sysRoleMenuMapper;
	@Autowired
	private MenuService menuService;

	public SysUserRole addSysUserRole(int userId, int roleId, int createId) throws Exception {
		SysUserRole userRole = new SysUserRole();
		userRole.setUserId(userId);
		userRole.setRoleId(roleId);
		userRole.setCreateId(createId);
		userRole.setCreateTime(new Date());
		userRole.setIsDeleted(false);
		sysUserRoleMapper.insertSelective(userRole);
		return userRole;
	}

	public List<SysUserRole> getSysUserRoles(int userId) throws Exception {
		return sysUserRoleMapper.selectSysUserRoles(userId);
	}

	public List<Menu> getUserMenu(int userId) throws Exception {
		List<Menu> menus = menuService.getAllMenus();
		List<SysUserRole> sysUserRoles = this.getSysUserRoles(userId);
		for (SysUserRole role : sysUserRoles) {
			List<SysRoleMenu> roleMenus = sysRoleMenuMapper.selectSysRoleMenus(role.getId());

		}
		List<SysUserMenu> sysUserMenus = sysUserMenuMapper.selectSysUserMenus(userId);
		return null;
	}

}
