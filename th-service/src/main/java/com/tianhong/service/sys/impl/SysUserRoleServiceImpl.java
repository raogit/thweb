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

import com.tianhong.constant.CommonConstant;
import com.tianhong.dao.sys.SysUserMenuMapper;
import com.tianhong.dao.sys.SysUserRoleMapper;
import com.tianhong.domain.sys.SysRole;
import com.tianhong.domain.sys.SysUserMenu;
import com.tianhong.domain.sys.SysUserRole;
import com.tianhong.domain.user.User;
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
	private SysUserMenuMapper sysUserMenuMapper;

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

	public boolean saveRoleAndMenu(int userId, String roleIds, String menuIds, User currUser) throws Exception {
		String[] roles = roleIds.split(CommonConstant.COMMA);
		String[] menus = menuIds.split(CommonConstant.COMMA);
		if (roleIds != null && roles.length > 0) {
			sysUserRoleMapper.deleteUserRoles(userId);
			for (String roleId : roles) {
				int rId = Integer.parseInt(roleId);
				SysUserRole userRole = new SysUserRole();
				userRole.setUserId(userId);
				userRole.setRoleId(rId);
				userRole.setCreateId(currUser.getId());
				userRole.setCreateTime(new Date());
				sysUserRoleMapper.insertSelective(userRole);
			}
		}
		if (menuIds != null && menus.length > 0) {
			sysUserMenuMapper.deleteUserMenus(userId);
			for (String menuId : menus) {
				int mId = Integer.parseInt(menuId);
				SysUserMenu userMenu = new SysUserMenu();
				userMenu.setUserId(userId);
				userMenu.setMenuId(mId);
				userMenu.setCreateId(currUser.getId());
				userMenu.setCreateTime(new Date());
				sysUserMenuMapper.insertSelective(userMenu);
			}
		}
		return true;
	}

}
