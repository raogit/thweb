/**  
 * @Title: MenuServiceImpl.java
 * @Package com.tianhong.service.impl
 * @Description: 描述
 * @author xing
 * @date 2016年7月13日 下午4:56:06
 */
package com.tianhong.service.menu.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.constant.CommonConstant;
import com.tianhong.dao.menu.MenuMapper;
import com.tianhong.domain.menu.Menu;
import com.tianhong.service.menu.MenuService;

/**
 * ClassName: MenuServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月13日 下午4:56:06
 */
@Service("menuService")
@Transactional
public class MenuServiceImpl implements MenuService {

	@Autowired
	private MenuMapper menuMapper;

	public List<Menu> getAllMenus() throws Exception {
		List<Menu> menus = menuMapper.selectAllMenus();
		for (Menu menu : menus) {
			for (Menu sub : menus) {
				if (sub.getParentId() != null && menu.getId().intValue() == sub.getParentId().intValue()) {
					menu.getSubMenus().add(sub);
				}
			}
			sort(menu.getSubMenus());
		}
		sort(menus);
		return menus;
	}

	public void sort(List<Menu> menus) throws Exception {
		if (menus != null && menus.size() >= 2) {
			for (int i = 0; i < menus.size() - 1; i++) {
				Menu menui = menus.get(i);
				Menu temp = null;
				for (int j = i + 1; j < menus.size(); j++) {
					Menu menuj = menus.get(j);
					if (menui.getSort() != null && menuj.getSort() != null
							&& menui.getSort().byteValue() > menuj.getSort().byteValue()) {
						temp = menui;
						menui = menuj;
						menuj = temp;
						menus.set(i, menui);
						menus.set(j, menuj);
					}
				}
			}
		}
	}

	public List<Menu> getMenusByType(int type) throws Exception {
		List<Menu> menus = menuMapper.selectMenusByType(type);
		for (Menu menu : menus) {
			for (Menu sub : menus) {
				if (sub.getParentId() != null && menu.getId().intValue() == sub.getParentId().intValue()) {
					menu.getSubMenus().add(sub);
				}
			}
			sort(menu.getSubMenus());
		}
		sort(menus);
		return menus;
	}

	public boolean addUserAuth(int userId, String roleIds, String menuIds) throws Exception {
		String[] roleIdArray = roleIds.split(CommonConstant.COMMA);
		for (String roleId : roleIdArray) {
			int roId = Integer.parseInt(roleId);

		}

		String[] menuIdArray = menuIds.split(CommonConstant.COMMA);
		return false;
	}

	public List<Menu> getPageRoles(Menu menu) throws Exception {
		return menuMapper.selectPage(menu);
	}

	public Menu getByPrimaryKey(int id) throws Exception {
		return menuMapper.selectByPrimaryKey(id);
	}

	public Menu insertSelective(Menu record) throws Exception {
		menuMapper.insertSelective(record);
		return record;
	}

	public boolean updateByPrimaryKeySelective(Menu record) throws Exception {
		record.setName(record.getName().trim());
		menuMapper.updateByPrimaryKeySelective(record);
		return true;
	}

	public Menu getByName(String name) throws Exception {
		return menuMapper.selectByName(name);
	}
}
