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

import com.tianhong.dao.sys.SysUserRoleMapper;
import com.tianhong.domain.sys.SysRole;
import com.tianhong.domain.sys.SysUserRole;
import com.tianhong.model.RoleMenu;
import com.tianhong.service.sys.SysRoleService;
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
	private SysRoleService sysRoleService;

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

	public List<RoleMenu> getRoleMenu(int userId) throws Exception {
		return sysUserRoleMapper.selectRoleMenu(userId);
	}

	public List<SysRole> getUserRoles(int userId) throws Exception {
		List<SysRole> roles = sysRoleService.getAllRoles();
		// List<RoleMenu> roleMenus = this.getRoleMenu(userId);
		// for (Menu menu : menus) {
		// for (RoleMenu roleMenu : roleMenus) {
		// if (menu.getId().intValue() == roleMenu.getMenuId()) {
		// menu.setSelected(true);
		// break;
		// }
		// }
		// }
		List<SysUserRole> sysUserRoles = sysUserRoleMapper.selectSysUserRoles(userId);
		for (SysRole role : roles) {
			for (SysUserRole userRole : sysUserRoles) {
				if (role.getId().intValue() == userRole.getRoleId().intValue()) {
					role.setSelected(true);
					break;
				}
			}
		}
		return roles;
	}

}
