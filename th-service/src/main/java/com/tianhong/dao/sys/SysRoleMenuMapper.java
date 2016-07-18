package com.tianhong.dao.sys;

import java.util.List;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.sys.SysRoleMenu;

public interface SysRoleMenuMapper extends BaseMapper<SysRoleMenu> {

	List<SysRoleMenu> selectSysRoleMenus(int roleId) throws Exception;
}