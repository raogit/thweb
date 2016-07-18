package com.tianhong.dao.sys;

import java.util.List;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.sys.SysUserRole;

public interface SysUserRoleMapper extends BaseMapper<SysUserRole> {

	List<SysUserRole> selectSysUserRoles(int userId) throws Exception;
}