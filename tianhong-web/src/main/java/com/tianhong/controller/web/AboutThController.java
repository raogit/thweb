/**
 * 
 */
package com.tianhong.controller.web;

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
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.content.Content;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.picture.Picture;
import com.tianhong.domain.web.DevelopHistory;
import com.tianhong.service.content.ContentService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.picture.PictureService;
import com.tianhong.service.web.DevelopHistoryService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/web/about")
public class AboutThController extends BaseController {

	private static final Log log = LogFactory.getLog(AboutThController.class);
	@Autowired
	private MenuService menuService;
	@Autowired
	private ContentService contentService;
	@Autowired
	private PictureService pictureService;
	@Autowired
	private DevelopHistoryService developHistoryService;

	@RequestMapping(value = "/index")
	public Object index(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("parentMenu", menuService.getByPrimaryKey(menuId));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menuId, true);
			model.put("subMenus", subMenus);
			model.put("menu", subMenus.get(0));
			Content content = contentService.getByMenuId(subMenus.get(0).getId());
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/aboutUs/intro", model);
	}

	@RequestMapping(value = "/intro")
	public Object intro(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);
			model.put("menu", subMenus.get(0));
			Content content = contentService.getByMenuId(subMenus.get(0).getId());
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/aboutUs/intro", model);
	}

	@RequestMapping(value = "/history")
	public Object history(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("menu", menu);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);

			List<DevelopHistory> historys = developHistoryService.getList(menuId);
			model.put("historys", historys);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/aboutUs/history", model);
	}

	@RequestMapping(value = "/strategy")
	public Object strategy(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("menu", menu);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/aboutUs/strategy", model);
	}

	@RequestMapping(value = "/awards")
	public Object awards(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("menu", menu);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);
			List<Picture> pictures = pictureService.findByMenuId(menuId);
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/aboutUs/awards", model);
	}

	@RequestMapping(value = "/brand")
	public Object brand(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("menu", menu);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/aboutUs/brand", model);
	}

}
