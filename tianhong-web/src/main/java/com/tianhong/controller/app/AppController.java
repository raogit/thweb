/**  
 * @Title: AppController.java
 * @Package com.tianhong.controller.app
 * @Description: 描述
 * @author xing
 * @date 2016年8月19日 下午3:26:44
 */
package com.tianhong.controller.app;

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
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.domain.menu.Menu;
import com.tianhong.service.menu.MenuService;

/**
 * ClassName: AppController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月19日 下午3:26:44
 */
@Controller
@RequestMapping(value = "/app")
public class AppController {
	private static final Log log = LogFactory.getLog(AppController.class);

	// @Autowired
	// private MenuService menuService;
	//
	// @Autowired
	// private PictureService pictureService;
	// @Autowired
	// private ContentService contentService;
	@Autowired
	private MenuService menuService;

	@RequestMapping(value = "/list")
	public Object subList(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			// List<Menu> subMenus = menuService.getSubMenus(menuId, true);
			// if (!CollectionUtils.isEmpty(subMenus)) {
			// for (Menu menu : subMenus) {
			// List<Picture> subPictures =
			// pictureService.findByMenuId(menu.getId());
			// Content content = contentService.getByMenuId(menu.getId());
			// menu.getPictures().addAll(subPictures);
			// menu.setContent(content);
			// }
			// }
			// model.put("subMenus", subMenus);
			// model.put("menuId", menuId);
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);
			model.put("headMenus", headMenus);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/app/index", model);
	}
}
