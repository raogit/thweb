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
@RequestMapping(value = "/shopping/news")
public class NewsController {

	private static final Log log = LogFactory.getLog(NewsController.class);
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

			List<Menu> subs = menuService.getSubs(menuId, true);

			for (Menu m : subs) {
				if (m.getName().indexOf("促销信息") > -1) {
					model.put("menu", m);
					List<Picture> promotionPictures = pictureService.findByMenuId(m.getId());
					model.put("promotionPictures", promotionPictures);
					// List<NewsCenter> promotionNewsCenter =
					// newsCenterService.getList(m.getId());
					// model.put("promotionNewsCenter", promotionNewsCenter);
					NewsCenter newsCenter = new NewsCenter();
					newsCenter.setPageSize(4);
					if (newsCenter.getCurPage() <= 1) {
						newsCenter.setCurPage(1);
					}
					newsCenter.setMenuId(m.getId());
					NewsCenter promotion = newsCenterService.getPage(newsCenter);
					model.put("promotion", promotion);
					break;
				}
			}
			for (Menu m : subs) {
				if (m.getName().indexOf("商户优惠") > -1) {
					List<Picture> discountPictures = pictureService.findByMenuId(m.getId());
					model.put("discountPictures", discountPictures);
					// List<NewsCenter> discountNewsCenter =
					// newsCenterService.getList(m.getId());
					// model.put("discountNewsCenter", discountNewsCenter);
					NewsCenter newsCenter = new NewsCenter();
					newsCenter.setPageSize(4);
					if (newsCenter.getCurPage() <= 1) {
						newsCenter.setCurPage(1);
					}
					newsCenter.setMenuId(m.getId());
					NewsCenter discount = newsCenterService.getPage(newsCenter);
					model.put("discount", discount);
					break;
				}
			}
			for (Menu m : subs) {
				if (m.getName().indexOf("新闻资讯") > -1) {
					List<Picture> infoPictures = pictureService.findByMenuId(m.getId());
					model.put("infoPictures", infoPictures);
					// List<NewsCenter> infoNewsCenter =
					// newsCenterService.getList(m.getId());
					// model.put("infoNewsCenter", infoNewsCenter);
					NewsCenter newsCenter = new NewsCenter();
					newsCenter.setPageSize(4);
					if (newsCenter.getCurPage() <= 1) {
						newsCenter.setCurPage(1);
					}
					newsCenter.setMenuId(m.getId());
					NewsCenter info = newsCenterService.getPage(newsCenter);
					model.put("info", info);
					break;
				}
			}
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/shoppingcenter/news", model);
	}

	@RequestMapping(value = "/promotion")
	public Object promotion(NewsCenter newsCenter, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			newsCenter.setPageSize(4);
			if (newsCenter.getCurPage() <= 1) {
				newsCenter.setCurPage(1);
			}
			Menu menu = menuService.getByPrimaryKey(newsCenter.getMenuId());
			Menu parentMenu = menuService.getByPrimaryKey(menu.getParentId());
			model.put("menu", menu);
			model.put("parentMenu", parentMenu);
			List<Menu> headMenus = menuService.getSubs(259, true);
			model.put("headMenus", headMenus);

			List<Menu> subs = menuService.getSubs(menu.getParentId(), true);
			model.put("subs", subs);
			for (Menu m : subs) {
				if (m.getName().indexOf("促销信息") > -1) {
					List<Picture> promotionPictures = pictureService.findByMenuId(m.getId());
					model.put("promotionPictures", promotionPictures);
					NewsCenter news = new NewsCenter();
					news.setPageSize(newsCenter.getPageSize());
					if (newsCenter.getMenuId().intValue() == m.getId().intValue()) {
						news.setCurPage(newsCenter.getCurPage());
					}
					if (news.getCurPage() <= 1) {
						news.setCurPage(1);
					}
					news.setMenuId(m.getId());
					NewsCenter promotion = newsCenterService.getPage(news);
					model.put("promotion", promotion);
					break;
				}
			}
			for (Menu m : subs) {
				if (m.getName().indexOf("商户优惠") > -1) {
					List<Picture> discountPictures = pictureService.findByMenuId(m.getId());
					model.put("discountPictures", discountPictures);
					// List<NewsCenter> discountNewsCenter =
					// newsCenterService.getList(m.getId());
					// model.put("discountNewsCenter", discountNewsCenter);
					NewsCenter news = new NewsCenter();
					news.setPageSize(newsCenter.getPageSize());
					if (newsCenter.getMenuId().intValue() == m.getId().intValue()) {
						news.setCurPage(newsCenter.getCurPage());
					}
					if (news.getCurPage() <= 1) {
						news.setCurPage(1);
					}
					news.setMenuId(m.getId());
					NewsCenter discount = newsCenterService.getPage(news);
					model.put("discount", discount);
					break;
				}
			}
			for (Menu m : subs) {
				if (m.getName().indexOf("新闻资讯") > -1) {
					List<Picture> infoPictures = pictureService.findByMenuId(m.getId());
					model.put("infoPictures", infoPictures);
					// List<NewsCenter> infoNewsCenter =
					// newsCenterService.getList(m.getId());
					// model.put("infoNewsCenter", infoNewsCenter);
					NewsCenter news = new NewsCenter();
					news.setPageSize(newsCenter.getPageSize());
					if (newsCenter.getMenuId().intValue() == m.getId().intValue()) {
						news.setCurPage(newsCenter.getCurPage());
					}
					if (news.getCurPage() <= 1) {
						news.setCurPage(1);
					}
					news.setMenuId(m.getId());
					newsCenter.setMenuId(m.getId());
					NewsCenter info = newsCenterService.getPage(news);
					model.put("info", info);
					break;
				}
			}
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/shoppingcenter/news", model);
	}

}
