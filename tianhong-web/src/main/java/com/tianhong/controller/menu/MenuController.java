/**
 * 
 */
package com.tianhong.controller.menu;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.picture.Picture;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.picture.PictureService;

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

	@Autowired
	private PictureService pictureService;

	@RequestMapping(value = "/sub")
	public Object subList(@RequestParam("menuId") int menuId, @RequestParam("link") String link,
			HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			List<Menu> subMenus = menuService.getSubMenus(menuId);
			List<Menu> headMenus = menuService.getSubMenus(13);
			model.put("headMenus", headMenus);
			model.put("subMenus", subMenus);

			List<Picture> pictures = pictureService.findByMenuId(menuId);
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView(link, model);
	}

	@RequestMapping(value = "/left")
	public Object left(@RequestParam("leftMenuId") int leftMenuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {

			List<Menu> headMenus = menuService.getSubMenus(13);

			List<Menu> subMenus = menuService.getSubMenus(leftMenuId);
			model.put("headMenus", headMenus);
			model.put("subMenus", subMenus);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/case/left", model);
	}

	@RequestMapping(value = "/head")
	public Object head(@RequestParam("headMenuId") int headMenuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			List<Menu> headMenus = menuService.getSubMenus(headMenuId);
			model.put("headMenus", headMenus);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/head/head", model);
	}

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
}
