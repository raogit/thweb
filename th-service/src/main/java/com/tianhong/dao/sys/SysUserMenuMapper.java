package com.tianhong.dao.sys;

import java.util.List;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.sys.SysUserMenu;

public interface SysUserMenuMapper extends BaseMapper<SysUserMenu> {

	List<SysUserMenu> selectSysUserMenus(int userId) throws Exception;

	int deleteUserMenus(int userId) throws Exception;
}