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
import com.tianhong.domain.picture.Picture;
import com.tianhong.service.content.ContentService;
import com.tianhong.service.menu.MenuService;
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
@RequestMapping(value = "/shopping/home")
public class HomePageController {

	private static final Log log = LogFactory.getLog(HomePageController.class);
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
			List<Menu> headMenus = menuService.getSubs(259, true);
			model.put("headMenus", headMenus);

			for (Menu m : headMenus) {
				if (m.getName().indexOf("首页") > -1) {
					model.put("menu", m);
					model.put("parentMenu", m);
					List<Menu> subs = menuService.getSubMenus(m.getId(), false);
					for (Menu e : subs) {
						if (e.getName().indexOf("轮换图") > -1) {
							List<Picture> rotatePictures = pictureService.findByMenuId(e.getId());
							model.put("rotatePictures", rotatePictures);
							break;
						}
					}
					for (Menu e : subs) {
						if (e.getName().indexOf("普通图") > -1) {
							List<Picture> commonPictures = pictureService.findByMenuId(e.getId());
							model.put("commonPictures", commonPictures);
							break;
						}
					}
					break;
				}
			}

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/shoppingcenter/index-shop", model);
	}

}
