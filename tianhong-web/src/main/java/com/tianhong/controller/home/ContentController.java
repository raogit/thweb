/**  
 * @Title: ContentController.java
 * @Package com.tianhong.controller.content
 * @Description: 描述
 * @author xing
 * @date 2016年8月17日 下午2:20:07
 */
package com.tianhong.controller.home;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.CollectionUtils;
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
 * ClassName: ContentController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月17日 下午2:20:07
 */
@Controller
@RequestMapping(value = "/content")
public class ContentController extends BaseController {

	private static final Log log = LogFactory.getLog(ContentController.class);

	@Autowired
	private PictureService pictureService;
	@Autowired
	private ContentService contentService;
	@Autowired
	private MenuService menuService;

	@RequestMapping(value = "/get")
	public Object get(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			String leftMenuId = request.getParameter("leftMenuId");
			String item = request.getParameter("item");
			String p = request.getParameter("p");
			List<Menu> headMenus = menuService.getSubMenus(13);
			List<Picture> pictures = pictureService.findByMenuId(menuId);
			Content content = contentService.getByMenuId(menuId);
			Menu menu = menuService.getByPrimaryKey(menuId);
			Menu parentMenu = menuService.getByPrimaryKey(menu.getParentId());

			model.put("headMenus", headMenus);
			model.put("content", content);
			model.put("menu", menu);
			model.put("pictures", pictures);
			model.put("parentMenu", parentMenu);
			model.put("item", item);
			model.put("p", p);
			model.put("leftMenuId", leftMenuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/case/profile", model);
	}

	@RequestMapping(value = "/item/get")
	public Object itemGet(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			String leftMenuId = request.getParameter("leftMenuId");
			String item = request.getParameter("item");
			String p = request.getParameter("p");
			List<Menu> headMenus = menuService.getSubMenus(13);

			model.put("headMenus", headMenus);
			model.put("item", item);
			model.put("p", p);
			model.put("leftMenuId", leftMenuId);
			model.put("rightMenuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/item/index", model);
	}

	@RequestMapping(value = "/contact/index")
	public Object index(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			String leftMenuId = request.getParameter("leftMenuId");
			String item = request.getParameter("item");
			String p = request.getParameter("p");
			List<Menu> headMenus = menuService.getSubMenus(13);
			Content content = contentService.getByMenuId(menuId);
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(menuId);
			model.put("subPictures", pictures);
			model.put("headMenus", headMenus);
			model.put("item", item);
			model.put("p", p);
			model.put("leftMenuId", leftMenuId);
			model.put("rightMenuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/contact/index", model);
	}

	@RequestMapping(value = "/contact/message")
	public Object message(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			String leftMenuId = request.getParameter("leftMenuId");
			String item = request.getParameter("item");
			String p = request.getParameter("p");
			List<Menu> headMenus = menuService.getSubMenus(13);

			model.put("headMenus", headMenus);
			model.put("item", item);
			model.put("p", p);
			model.put("leftMenuId", leftMenuId);
			model.put("rightMenuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/contact/message", model);
	}

	@RequestMapping(value = "/right")
	public Object right(@RequestParam("leftMenuId") int leftMenuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			List<Menu> subMenus = menuService.getSubMenus(leftMenuId);
			List<Content> contents = new ArrayList<Content>();
			for (Menu menu : subMenus) {
				List<Menu> subs = menuService.getSubMenus(menu.getId());
				if (!CollectionUtils.isEmpty(subs)) {
					Content content = contentService.getByMenuId(subs.get(0).getId());
					List<Picture> pictures = pictureService.findByMenuId(subs.get(0).getId());
					if (!CollectionUtils.isEmpty(pictures)) {
						content.getPictures().addAll(pictures);
					}
					if (content != null) {
						content.setMenu(subs.get(0));
					}
					contents.add(content);
				}
			}
			model.put("contents", contents);
			model.put("leftMenuId", leftMenuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/case/right", model);
	}
}
