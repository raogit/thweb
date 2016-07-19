package com.tianhong.dao.sys;

import java.util.List;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.sys.SysRole;

public interface SysRoleMapper extends BaseMapper<SysRole> {

	List<SysRole> selectAllRoles() throws Exception;

	List<SysRole> selectPageRoles(SysRole role) throws Exception;

	int selectCount(SysRole role) throws Exception;
}