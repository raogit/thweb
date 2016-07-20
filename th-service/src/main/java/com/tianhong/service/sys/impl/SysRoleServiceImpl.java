/**  
 * @Title: SysRoleServiceImpl.java
 * @Package com.tianhong.service.sys.impl
 * @Description: 描述
 * @author xing
 * @date 2016年7月19日 下午2:26:38
 */
package com.tianhong.service.sys.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.constant.CommonConstant;
import com.tianhong.dao.sys.SysRoleMapper;
import com.tianhong.dao.sys.SysRoleMenuMapper;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.sys.SysRole;
import com.tianhong.domain.sys.SysRoleMenu;
import com.tianhong.domain.user.User;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.sys.SysRoleService;

/**
 * ClassName: SysRoleServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月19日 下午2:26:38
 */
@Service("sysRoleService")
@Transactional
public class SysRoleServiceImpl implements SysRoleService {

	@Autowired
	private SysRoleMapper sysRoleMapper;

	@Autowired
	private SysRoleMenuMapper sysRoleMenuMapper;

	@Autowired
	private MenuService menuService;

	public SysRole getPageRoles(SysRole role) throws Exception {
		List<SysRole> roles = sysRoleMapper.selectPageRoles(role);
		int count = sysRoleMapper.selectCount(role);
		role.setObj(roles);
		role.setTotalRow(count);
		return role;
	}

	public SysRole getByPrimaryKey(int id) throws Exception {
		return sysRoleMapper.selectByPrimaryKey(id);
	}

	public SysRole insertSelective(SysRole role) throws Exception {
		role.setRoleName(role.getRoleName().trim());
		role.setRoleDescription(role.getRoleDescription().trim());
		sysRoleMapper.insertSelective(role);
		return role;
	}

	public boolean updateByPrimaryKeySelective(SysRole role) throws Exception {
		role.setRoleName(role.getRoleName().trim());
		role.setRoleDescription(role.getRoleDescription().trim());
		sysRoleMapper.updateByPrimaryKeySelective(role);
		return true;
	}

	public List<SysRole> getAllRoles() throws Exception {
		return sysRoleMapper.selectAllRoles();
	}

	public SysRole getByName(String roleName) throws Exception {
		return sysRoleMapper.selectByName(roleName);
	}

	public List<Menu> getRoleMenus(int roleId) throws Exception {
		// TODO Auto-generated method stub
		List<Menu> menus = menuService.getAllMenus();
		List<SysRoleMenu> roleMenus = sysRoleMenuMapper.selectSysRoleMenus(roleId);
		for (Menu menu : menus) {
			for (SysRoleMenu roleMenu : roleMenus) {
				if (menu.getId().intValue() == roleMenu.getMenuId()) {
					menu.setSelected(true);
					break;
				}
			}
		}
		return menus;
	}

	public boolean insertRoleMenus(int roleId, String menuIds, User currUser) throws Exception {
		sysRoleMenuMapper.deleteByRoleId(roleId);
		String[] mIds = menuIds.split(CommonConstant.COMMA);
		for (String mId : mIds) {
			int menuId = Integer.parseInt(mId);
			SysRoleMenu roleMenu = new SysRoleMenu();
			roleMenu.setRoleId(roleId);
			roleMenu.setMenuId(menuId);
			roleMenu.setCreateId(currUser.getId());
			roleMenu.setCreateTime(new Date());
			sysRoleMenuMapper.insertSelective(roleMenu);
		}
		return true;
	}

}
