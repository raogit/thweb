/**  
 * @Title: CultureController.java
 * @Package com.tianhong.controller.web
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午2:28:14
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
import com.tianhong.service.content.ContentService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.picture.PictureService;

/**
 * ClassName: CultureController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午2:28:14
 */
@Controller
@RequestMapping(value = "/web/culture")
public class CultureController extends BaseController {

	private static final Log log = LogFactory.getLog(CultureController.class);

	@Autowired
	private MenuService menuService;
	@Autowired
	private ContentService contentService;
	@Autowired
	private PictureService pictureService;

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
		return new ModelAndView("/web/culture/index", model);
	}

	@RequestMapping(value = "/index2")
	public Object index2(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);
			model.put("menu", menu);
			Content content = contentService.getByMenuId(subMenus.get(0).getId());
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(menuId);
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/culture/index", model);
	}

	@RequestMapping(value = "/trailer")
	public Object trailer(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);
			model.put("menu", menu);
			Content content = contentService.getByMenuId(subMenus.get(0).getId());
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(menuId);
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/culture/trailer", model);
	}

	@RequestMapping(value = "/ejournals")
	public Object ejournals(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);
			model.put("menu", menu);
			Content content = contentService.getByMenuId(subMenus.get(0).getId());
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(menuId);
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/culture/ejournals", model);
	}

	@RequestMapping(value = "/video")
	public Object video(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);
			model.put("menu", menu);
			Content content = contentService.getByMenuId(subMenus.get(0).getId());
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(menuId);
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/culture/video", model);
	}

	@RequestMapping(value = "/public")
	public Object publicPage(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);
			model.put("menu", menu);
			Content content = contentService.getByMenuId(subMenus.get(0).getId());
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(menuId);
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/culture/public", model);
	}
}
