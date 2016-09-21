/**  
 * @Title: NewsCenterController.java
 * @Package com.tianhong.controller.web
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午2:39:38
 */
package com.tianhong.controller.web;

import java.util.ArrayList;
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
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.newscenter.NewsCenter;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.newscenter.NewsCenterService;

/**
 * ClassName: NewsCenterController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午2:39:38
 */
@Controller
@RequestMapping(value = "/web/newscenter")
public class NewsCenterController extends BaseController {

	private static final Log log = LogFactory.getLog(NewsCenterController.class);
	@Autowired
	private NewsCenterService newsCenterService;
	@Autowired
	private MenuService menuService;

	@RequestMapping(value = "/index")
	public Object info(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("menuId", menuId);
			Menu parentMenu = menuService.getByPrimaryKey(menuId);
			model.put("parentMenu", parentMenu);
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			NewsCenter newsCenter = new NewsCenter();
			newsCenter.setMenuId(menuId);
			newsCenter.setType("新闻头条");
			List<NewsCenter> newsHeadLine = newsCenterService.getList(newsCenter);
			model.put("newsHeadLine", newsHeadLine);
			newsCenter.setType("媒体视角");
			List<NewsCenter> newsMedia = newsCenterService.getList(newsCenter);
			model.put("newsMedia", newsMedia);
			newsCenter.setType("公司新闻");
			List<NewsCenter> newsCompany = newsCenterService.getList(newsCenter);
			model.put("newsCompany", newsCompany);

			List<NewsCenter> newsAll = new ArrayList<NewsCenter>();
			newsAll.addAll(newsMedia);
			newsAll.addAll(newsCompany);
			model.put("newsAll", newsAll);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/news/news", model);
	}

	@RequestMapping(value = "/detail")
	public Object detail(@RequestParam("menuId") int menuId, @RequestParam("id") int id, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("menuId", menuId);
			model.put("parentMenu", menuService.getByPrimaryKey(menuId));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			NewsCenter news = newsCenterService.getByPrimaryKey(id);
			model.put("news", news);
			NewsCenter newsCenter = new NewsCenter();
			newsCenter.setType(news.getType());
			List<NewsCenter> newsRelation = newsCenterService.getList(newsCenter);
			model.put("newsRelation", newsRelation);

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/news/newsinfo", model);
	}
}
