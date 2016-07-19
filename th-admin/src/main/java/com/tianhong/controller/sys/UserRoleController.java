/**
 * 
 */
package com.tianhong.controller.sys;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.domain.menu.Menu;
import com.tianhong.service.sys.SysUserRoleService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/userrole")
public class UserRoleController {

	private static final Log log = LogFactory.getLog(UserRoleController.class);
	@Autowired
	private SysUserRoleService sysUserRoleService;

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object menuList(@RequestParam("userId") int userId, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			List<Menu> menus = sysUserRoleService.getUserMenu(userId);
			return menus;
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}
}
