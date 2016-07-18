/**
 * 
 */
package com.tianhong.service.sys.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.sys.SysRoleMenuMapper;
import com.tianhong.domain.sys.SysRoleMenu;
import com.tianhong.service.sys.SysRoleMenuService;

/**
 * @author Administrator
 *
 */
@Service("sysRoleMenuService")
@Transactional
public class SysRoleMenuServiceImpl implements SysRoleMenuService {

	@Autowired
	private SysRoleMenuMapper sysRoleMenuMapper;

	public List<SysRoleMenu> getSysRoleMenus(int roleId) throws Exception {
		return sysRoleMenuMapper.selectSysRoleMenus(roleId);
	}

}
