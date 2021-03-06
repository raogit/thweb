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
import com.tianhong.service.content.ContentService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.picture.PictureService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/web/business")
public class BusinessController extends BaseController {

	private static final Log log = LogFactory.getLog(AboutThController.class);

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
			Content content = contentService.getByMenuId(181);
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);
			model.put("contentLoan", contentService.getByMenuId(186));// 天虹小额贷
			model.put("contentMarket", contentService.getByMenuId(187));// 天虹商场
			model.put("contentJun", contentService.getByMenuId(188));// 君尚百货
			model.put("contentCenter", contentService.getByMenuId(189));// 购物中心
			model.put("contentWin", contentService.getByMenuId(190));// 购物中心
			model.put("contentScarf", contentService.getByMenuId(191));// 天虹红领巾
			model.put("contentHome", contentService.getByMenuId(192));// 天虹置业
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/business", model);
	}

	@RequestMapping(value = "/detail")
	public Object detail(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("menu", menu);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);

			Content content = contentService.getByMenuId(181);
			model.put("content", content);

			model.put("contentLoan", contentService.getByMenuId(186));// 天虹小额贷
			model.put("contentMarket", contentService.getByMenuId(187));// 天虹商场
			model.put("contentJun", contentService.getByMenuId(188));// 君尚百货
			model.put("contentCenter", contentService.getByMenuId(189));// 购物中心
			model.put("contentWin", contentService.getByMenuId(190));// 购物中心
			model.put("contentScarf", contentService.getByMenuId(191));// 天虹红领巾
			model.put("contentHome", contentService.getByMenuId(192));// 天虹置业
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/business", model);
	}
}
