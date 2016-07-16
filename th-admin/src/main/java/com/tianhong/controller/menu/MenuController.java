/**
 * 
 */
package com.tianhong.controller.menu;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.menu.Menu;
import com.tianhong.service.menu.MenuService;

/**
 * @author Administrator
 *
 */
@Controller
public class MenuController extends BaseController {

	private static final Log log = LogFactory.getLog(MenuController.class);

	@Autowired
	private MenuService menuService;

	@RequestMapping(value = "/menulist")
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

	@RequestMapping(value = "/menufrontlist")
	@ResponseBody
	public Object menuFrontList(HttpServletRequest request, HttpServletResponse response) {
		try {
			int type = Integer.parseInt(request.getParameter("type"));
			List<Menu> menus = menuService.getMenusByType(type);
			return menus;
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/menu")
	public Object menu(HttpServletRequest request, HttpServletResponse response) {
		return "/menu/menu";
	}

	@RequestMapping(value = "/user")
	public Object user(HttpServletRequest request, HttpServletResponse response) {
		return "/user/list";
	}
}
