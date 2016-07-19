/**  
 * @Title: SysRoleServiceImpl.java
 * @Package com.tianhong.service.sys.impl
 * @Description: 描述
 * @author xing
 * @date 2016年7月19日 下午2:26:38
 */
package com.tianhong.service.sys.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.sys.SysRoleMapper;
import com.tianhong.domain.sys.SysRole;
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
		sysRoleMapper.insertSelective(role);
		return role;
	}

	public boolean updateByPrimaryKeySelective(SysRole role) throws Exception {
		sysRoleMapper.updateByPrimaryKeySelective(role);
		return true;
	}

}
