/**  
 * @Title: SysMenuServiceImpl.java
 * @Package com.tianhong.service.sys.impl
 * @Description: 描述
 * @author xing
 * @date 2016年8月16日 上午10:34:17
 */
package com.tianhong.service.sys.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.menu.MenuMapper;
import com.tianhong.domain.menu.Menu;
import com.tianhong.service.sys.SysMenuService;

/**
 * ClassName: SysMenuServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月16日 上午10:34:17
 */
@Service("sysMenuService")
@Transactional
public class SysMenuServiceImpl implements SysMenuService {

	@Autowired
	private MenuMapper menuMapper;

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

	public List<Menu> getAllMenus() throws Exception {
		return menuMapper.selectAllMenus();
	}

	public Menu getByName(String name) throws Exception {
		return menuMapper.selectByName(name);
	}

}
