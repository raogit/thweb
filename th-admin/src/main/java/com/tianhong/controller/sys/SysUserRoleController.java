/**
 * 
 */
package com.tianhong.controller.sys;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.domain.menu.Menu;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.sys.SysUserRoleService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/userrole")
public class SysUserRoleController {

	@Autowired
	private MenuService menuService;

	@Autowired
	private SysUserRoleService sysUserRoleService;

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object menuList(HttpServletRequest request, HttpServletResponse response) {
		try {
			List<Menu> menus = menuService.getAllMenus();

			return menus;
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}
}
