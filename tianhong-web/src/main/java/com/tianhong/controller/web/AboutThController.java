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
import com.tianhong.domain.menu.Menu;
import com.tianhong.service.menu.MenuService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/web/about")
public class AboutThController extends BaseController {

	private static final Log log = LogFactory.getLog(AboutThController.class);
	@Autowired
	private MenuService menuService;

	@RequestMapping(value = "/intro")
	public Object intro(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("menu", menuService.getByPrimaryKey(menuId));
			List<Menu> subMenus = menuService.getSubMenus(172, true);
			model.put("subMenus", subMenus);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/aboutUs/intro", model);
	}
}
