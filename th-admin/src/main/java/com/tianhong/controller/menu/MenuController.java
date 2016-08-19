/**
 * 
 */
package com.tianhong.controller.menu;

import java.util.Date;
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

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.user.User;
import com.tianhong.enums.UserLevelEnum;
import com.tianhong.service.menu.MenuService;
import com.tianhong.utils.AssertUtils;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/menu")
public class MenuController extends BaseController {

	private static final Log log = LogFactory.getLog(MenuController.class);

	@Autowired
	private MenuService menuService;

	@RequestMapping(value = "/news/detail")
	public Object newsDetail(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		request.setAttribute("menuId", menuId);
		return "/news/detail";
	}

	@RequestMapping(value = "/news/list")
	public Object newsList(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		request.setAttribute("menuId", menuId);
		return "/news/list";
	}

	@RequestMapping(value = "/file/list")
	public Object fileList(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		request.setAttribute("menuId", menuId);
		return "/file/list";
	}

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

	@RequestMapping(value = "/listbytype")
	@ResponseBody
	public Object menuListByType(HttpServletRequest request, HttpServletResponse response) {
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

	@RequestMapping(value = "/addusermenu")
	public Object add(HttpServletRequest request, HttpServletResponse response) {

		try {
			String roleIds = request.getParameter("roleIds");
			String menuIds = request.getParameter("menuIds");
			int userId = Integer.parseInt(request.getParameter("userId"));
			return menuService.addUserAuth(userId, roleIds, menuIds);
		} catch (Exception e) {
			log.error("", e);
		}
		return "/user/list";
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(Menu menu, HttpServletRequest request, HttpServletResponse response) {
		try {
			menu.setName(menu.getName().trim());
			return menuService.getPage(menu);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return menuService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/add")
	@ResponseBody
	public Object add(Menu menu, HttpServletRequest request, HttpServletResponse response) {
		try {
			Menu m = menuService.getByName(menu.getName());
			if (m != null) {
				AssertUtils.isTrue(m.getParentId().intValue() != menu.getParentId().intValue(), "角色已存在");
			}
			User user = getCurrentUser(request);

			if (menu.getParentId() != null && menu.getParentId().intValue() > 0) {
				Menu parentMenu = menuService.getByPrimaryKey(menu.getParentId());
				AssertUtils.notNull(parentMenu, "parentMenu 不存在");
				byte userLevel = UserLevelEnum.getUserLevel(parentMenu.getLevel());
				menu.setLevel(userLevel);
			} else {
				menu.setParentId(0);
				menu.setLevel((byte) 1);
			}

			menu.setSort(menuService.getSort(menu.getParentId()));

			menu.setCreateId(user.getCreateId());
			menu.setCreateTime(new Date());
			menu.setIsDeleted(false);
			menu.setCreateId(user.getId());
			menu.setCreateTime(new Date());
			return menuService.insertSelective(menu);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			Menu menu = menuService.getByPrimaryKey(id);
			AssertUtils.notNull(menu, "角色不存在");
			menu.setIsDeleted(true);
			menu.setUpdateTime(new Date());
			menu.setUpdateId(user.getId());
			return menuService.updateByPrimaryKeySelective(menu);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/edit")
	@ResponseBody
	public Object edit(Menu menu, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			menu.setUpdateTime(new Date());
			menu.setUpdateId(user.getId());
			return menuService.updateByPrimaryKeySelective(menu);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
