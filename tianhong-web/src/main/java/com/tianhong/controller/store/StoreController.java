/**
 * 
 */
package com.tianhong.controller.store;

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
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.picture.PictureService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/store")
public class StoreController {

	private static final Log log = LogFactory.getLog(StoreController.class);

	@Autowired
	private MenuService menuService;

	@Autowired
	private PictureService pictureService;

	@RequestMapping(value = "/index")
	public Object index(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			List<Menu> subMenus = menuService.getSubMenus(162, true);
			model.put("subMenus", subMenus);
			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/store/default", model);
	}
}
