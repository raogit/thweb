/**  
 * @Title: SysUserMenuServiceImpl.java
 * @Package com.tianhong.service.sys.impl
 * @Description: 描述
 * @author xing
 * @date 2016年7月16日 上午11:39:41
 */
package com.tianhong.service.sys.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.sys.SysUserMenuMapper;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.sys.SysUserMenu;
import com.tianhong.service.menu.MenuService;
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
	private MenuService menuService;
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

	public List<Menu> getUserMenus(int userId) throws Exception {
		List<Menu> menus = menuService.getAllMenus();
		List<SysUserMenu> sysUserMenus = sysUserMenuMapper.selectSysUserMenus(userId);
		for (Menu menu : menus) {
			for (SysUserMenu userMenu : sysUserMenus) {
				if (menu.getId().intValue() == userMenu.getMenuId()) {
					menu.setSelected(true);
					break;
				}
			}
		}
		return menus;

	}

}
