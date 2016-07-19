/**  
 * @Title: RoleController.java
 * @Package com.tianhong.controller.sys
 * @Description: 描述
 * @author xing
 * @date 2016年7月19日 下午2:25:17
 */
package com.tianhong.controller.sys;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.sys.SysRole;
import com.tianhong.domain.user.User;
import com.tianhong.service.sys.SysRoleService;
import com.tianhong.utils.AssertUtils;

/**
 * ClassName: RoleController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月19日 下午2:25:17
 */
@Controller
@RequestMapping("/role")
public class RoleController extends BaseController {

	private static final Log log = LogFactory.getLog(RoleController.class);
	@Autowired
	private SysRoleService sysRoleService;

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(SysRole sysRole, HttpServletRequest request, HttpServletResponse response) {
		try {
			return sysRoleService.getPageRoles(sysRole);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return sysRoleService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/add")
	@ResponseBody
	public Object add(SysRole sysRole, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			sysRole.setCreateId(user.getCreateId());
			sysRole.setCreateTime(new Date());
			return sysRoleService.insertSelective(sysRole);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			SysRole role = sysRoleService.getByPrimaryKey(id);
			AssertUtils.notNull(role, "角色不存在");
			role.setIsDeleted(false);
			role.setUpdateTime(new Date());
			role.setUpdateId(user.getId());
			return sysRoleService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/edit")
	@ResponseBody
	public Object edit(SysRole role, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			role.setUpdateTime(new Date());
			role.setUpdateId(user.getId());
			return sysRoleService.updateByPrimaryKeySelective(role);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}
}
