/**  
 * @Title: HomePageController.java
 * @Package com.tianhong.controller.shoppingcenter
 * @Description: 描述
 * @author xing
 * @date 2016年10月26日 下午2:51:05
 */
package com.tianhong.controller.shoppingcenter;

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

import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.newscenter.NewsCenter;
import com.tianhong.domain.picture.Picture;
import com.tianhong.service.content.ContentService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.newscenter.NewsCenterService;
import com.tianhong.service.picture.PictureService;
import com.tianhong.service.web.DevelopHistoryService;

/**
 * ClassName: HomePageController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年10月26日 下午2:51:05
 */
@Controller
@RequestMapping(value = "/shopping/specia")
public class SpeciaFoodController {

	private static final Log log = LogFactory.getLog(SpeciaFoodController.class);
	@Autowired
	private MenuService menuService;
	@Autowired
	private ContentService contentService;
	@Autowired
	private NewsCenterService newsCenterService;
	@Autowired
	private PictureService pictureService;
	@Autowired
	private DevelopHistoryService developHistoryService;

	@RequestMapping(value = "/index")
	public Object index(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("parentMenu", menu);
			List<Menu> headMenus = menuService.getSubs(259, true);
			model.put("headMenus", headMenus);

			List<Menu> subs = menuService.getSubs(menuId, false);
			for (Menu m : subs) {
				if (m.getName().indexOf("轮换图") > -1) {
					List<Picture> rotationPictures = pictureService.findByMenuId(m.getId());
					model.put("rotationPictures", rotationPictures);
					continue;
				}
				if (m.getName().indexOf("活动资讯") > -1) {
					List<NewsCenter> activityInfo = newsCenterService.getList(m.getId());
					model.put("activityInfo", activityInfo);
					continue;
				}
				if (m.getName().indexOf("特色美食") > -1) {
					Picture p = new Picture();
					p.setPageSize(4);
					if (p.getCurPage() <= 1) {
						p.setCurPage(1);
					}
					p.setMenuId(m.getId());
					Picture foodAdPictures = pictureService.getPage(p);
					model.put("foodAdPictures", foodAdPictures);
					continue;
				}
				if (m.getName().indexOf("休闲娱乐") > -1) {
					Picture p = new Picture();
					p.setPageSize(4);
					if (p.getCurPage() <= 1) {
						p.setCurPage(1);
					}
					p.setMenuId(m.getId());
					Picture happyAdPictures = pictureService.getPage(p);
					model.put("happyAdPictures", happyAdPictures);
					continue;
				}
				if (m.getName().indexOf("潮流风尚") > -1) {
					Picture p = new Picture();
					p.setPageSize(4);
					if (p.getCurPage() <= 1) {
						p.setCurPage(1);
					}
					p.setMenuId(m.getId());
					Picture popularAdPictures = pictureService.getPage(p);
					model.put("popularAdPictures", popularAdPictures);
					continue;
				}
			}
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/shoppingcenter/specia-food", model);
	}

	@RequestMapping(value = "/food")
	public Object food(Picture picture, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			picture.setPageSize(4);
			if (picture.getCurPage() <= 1) {
				picture.setCurPage(1);
			}
			Menu menu = menuService.getByPrimaryKey(picture.getMenuId());
			model.put("parentMenu", menu);
			List<Menu> headMenus = menuService.getSubs(259, true);
			model.put("headMenus", headMenus);

			List<Menu> subs = menuService.getSubs(menu.getParentId(), false);
			for (Menu m : subs) {
				if (m.getName().indexOf("轮换图") > -1) {
					List<Picture> foodRotationPictures = pictureService.findByMenuId(m.getId());
					model.put("foodRotationPictures", foodRotationPictures);
					continue;
				}
				if (m.getName().indexOf("活动资讯") > -1) {
					List<NewsCenter> foodNewsCenter = newsCenterService.getList(m.getId());
					model.put("foodNewsCenter", foodNewsCenter);
					continue;
				}
				if (m.getName().indexOf("特色美食") > -1) {
					Picture p = new Picture();
					p.setPageSize(picture.getPageSize());
					if (picture.getMenuId().intValue() == m.getId().intValue()) {
						p.setCurPage(picture.getCurPage());
					}
					if (p.getCurPage() <= 1) {
						p.setCurPage(1);
					}
					p.setMenuId(m.getId());
					Picture foodAdPictures = pictureService.getPage(p);
					model.put("foodAdPictures", foodAdPictures);
					continue;
				}
				if (m.getName().indexOf("休闲娱乐") > -1) {
					Picture p = new Picture();
					p.setPageSize(picture.getPageSize());
					if (picture.getMenuId().intValue() == m.getId().intValue()) {
						p.setCurPage(picture.getCurPage());
					}
					if (p.getCurPage() <= 1) {
						p.setCurPage(1);
					}
					p.setMenuId(m.getId());
					Picture happyAdPictures = pictureService.getPage(p);
					model.put("happyAdPictures", happyAdPictures);
					continue;
				}
				if (m.getName().indexOf("潮流风尚") > -1) {
					Picture p = new Picture();
					p.setPageSize(picture.getPageSize());
					if (picture.getMenuId().intValue() == m.getId().intValue()) {
						p.setCurPage(picture.getCurPage());
					}
					if (p.getCurPage() <= 1) {
						p.setCurPage(1);
					}
					p.setMenuId(m.getId());
					Picture popularAdPictures = pictureService.getPage(p);
					model.put("popularAdPictures", popularAdPictures);
					continue;
				}
			}

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/shoppingcenter/specia-food", model);
	}

	@RequestMapping(value = "/detail")
	public Object detail(@RequestParam("menuId") int menuId, @RequestParam("id") int id, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			Menu parentMenu = menuService.getByPrimaryKey(menu.getParentId());
			model.put("menu", menu);
			model.put("parentMenu", parentMenu);
			List<Menu> headMenus = menuService.getSubs(259, true);
			model.put("headMenus", headMenus);

			NewsCenter news = newsCenterService.getByPrimaryKey(id);
			model.put("news", news);
			NewsCenter newsCenter = new NewsCenter();
			newsCenter.setMenuId(menuId);
			newsCenter.setType(news.getType());
			List<NewsCenter> newsRelation = newsCenterService.getList(newsCenter);
			model.put("newsRelation", newsRelation);

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/shoppingcenter/news-details", model);
	}

}
