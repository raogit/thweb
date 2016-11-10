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

import com.tianhong.domain.content.Content;
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
@RequestMapping(value = "/shopping/aboutus")
public class AboutUsController {

	private static final Log log = LogFactory.getLog(AboutUsController.class);
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

			List<Menu> subShowMenus = menuService.getSubs(menuId, true);
			model.put("subShowMenus", subShowMenus);

			List<Menu> subs = menuService.getSubs(menuId, false);
			for (Menu m : subs) {
				if (m.getName().indexOf("公司简介") > -1) {
					Content companyProfile = contentService.getByMenuId(m.getId());
					model.put("companyProfile", companyProfile);
					break;
				}
			}
			
			for (Menu m : subs) {
				if (m.getName().indexOf("联系我们") > -1) {
					List<Menu> subMenus = menuService.getSubs(m.getId(), false);
					for(Menu nu : subMenus){
						if(nu.getName().indexOf("联系方式")>-1){
							Content c = new Content();
							c.setMenuId(nu.getId());
							List<Content> contactUsContents = contentService.list(c);
							model.put("contactUsContents", contactUsContents);
							break;
						}
					}
					for(Menu nu : subMenus){
						if(nu.getName().indexOf("图片")>-1){
							List<Picture> contactUsPictures = pictureService.findByMenuId(nu.getId());
							model.put("contactUsPictures", contactUsPictures);
							break;
						}
					}
					break;
				}
			}
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/shoppingcenter/about-us", model);
	}

	@RequestMapping(value = "/introduction")
	public Object introduction(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {

			Menu menu = menuService.getByPrimaryKey(menuId);
			Menu parentMenu = menuService.getByPrimaryKey(menu.getParentId());
			model.put("menu", menu);
			model.put("parentMenu", parentMenu);
			List<Menu> subShowMenus = menuService.getSubs(menu.getParentId(), true);
			model.put("subShowMenus", subShowMenus);

			List<Menu> headMenus = menuService.getSubs(259, true);
			model.put("headMenus", headMenus);

			List<Menu> subs = menuService.getSubs(menu.getParentId(), false);
			for (Menu m : subs) {
				if (m.getName().indexOf("轮换图") > -1) {
					List<Picture> rotationPictures = pictureService.findByMenuId(m.getId());
					model.put("rotationPictures", rotationPictures);
					break;
				}
			}
			for (Menu m : subs) {
				if (m.getName().indexOf("活动资讯") > -1) {
					List<NewsCenter> activityInfo = newsCenterService.getList(m.getId());
					model.put("activityInfo", activityInfo);
					break;
				}
			}
			for (Menu m : subs) {

			}
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/shoppingcenter/about-us", model);
	}

	@RequestMapping(value = "/detail")
	public Object detail(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {

			List<Menu> headMenus = menuService.getSubs(259, true);
			model.put("headMenus", headMenus);

			NewsCenter news = newsCenterService.getByPrimaryKey(id);
			model.put("news", news);

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/shoppingcenter/food-details", model);
	}

}