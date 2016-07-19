/**  
 * @Title: RoleController.java
 * @Package com.tianhong.controller.sys
 * @Description: 描述
 * @author xing
 * @date 2016年7月19日 下午2:25:17
 */
package com.tianhong.controller.sys;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.domain.sys.SysRole;
import com.tianhong.service.sys.SysRoleService;

/**
 * ClassName: RoleController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月19日 下午2:25:17
 */
@Controller
@RequestMapping("/role")
public class RoleController {

	private static final Log log = LogFactory.getLog(RoleController.class);
	@Autowired
	private SysRoleService sysRoleService;

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object menuList(SysRole sysRole, HttpServletRequest request, HttpServletResponse response) {
		try {
			return sysRoleService.getPageRoles(sysRole);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}
}
