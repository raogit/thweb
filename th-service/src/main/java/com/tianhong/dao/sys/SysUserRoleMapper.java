package com.tianhong.dao.sys;

import java.util.List;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.sys.SysUserRole;
import com.tianhong.model.RoleMenu;

public interface SysUserRoleMapper extends BaseMapper<SysUserRole> {

	List<SysUserRole> selectSysUserRoles(int userId) throws Exception;

	List<RoleMenu> selectRoleMenu(int userId) throws Exception;

	int deleteUserRoles(int userId) throws Exception;
}