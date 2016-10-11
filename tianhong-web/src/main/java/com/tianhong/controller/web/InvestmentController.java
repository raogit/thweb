/**
 * 
 */
package com.tianhong.controller.web;

import java.util.Date;
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

import com.alibaba.fastjson.JSONObject;
import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.content.Content;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.newscenter.NewsCenter;
import com.tianhong.domain.picture.Picture;
import com.tianhong.domain.user.User;
import com.tianhong.model.InvestmentCover;
import com.tianhong.service.content.ContentService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.newscenter.NewsCenterService;
import com.tianhong.service.picture.PictureService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/web/investment")
public class InvestmentController extends BaseController {

	private static final Log log = LogFactory.getLog(AboutThController.class);

	@Autowired
	private MenuService menuService;
	@Autowired
	private ContentService contentService;
	@Autowired
	private PictureService pictureService;
	@Autowired
	private NewsCenterService newsCenterService;

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

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/business/busine-index", model);
	}

	@RequestMapping(value = "/business")
	public Object business(@RequestParam("menuId") int menuId, HttpServletRequest request,
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

			Content content = contentService.getByMenuId(181);
			model.put("content", content);

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/business/busine-index", model);
	}

	@RequestMapping(value = "/show")
	public Object show(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("menu", menu);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);

			NewsCenter newsCenter = new NewsCenter();
			newsCenter.setMenuId(menuId);
			newsCenter.setType("品牌展示");
			List<NewsCenter> brands = newsCenterService.getList(newsCenter);
			model.put("brands", brands);
			newsCenter.setType("项目展示");
			List<NewsCenter> projects = newsCenterService.getList(newsCenter);
			model.put("projects", projects);

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/business/show", model);
	}

	@RequestMapping(value = "/investmentcover/save")
	@ResponseBody
	public Object investmentcoverSave(InvestmentCover investmentCover, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			User user = getCurrentUser(request);
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
			String json = JSONObject.toJSONString(investmentCover);
			Content content = new Content();
			content.setId(investmentCover.getId());
			content.setMenuId(Integer.parseInt(menuId));
			content.setContent(json);
			content.setCreateTime(new Date());
			content.setCreateId(user.getId());
			return contentService.save(content);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
