/**
 * 
 */
package com.tianhong.controller.menu;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.tianhong.domain.menu.Menu;
import com.tianhong.model.Result;
import com.tianhong.service.menu.MenuService;

/**
 * @author Administrator
 *
 */
@Controller
public class MenuController {

	private static final Log log = LogFactory.getLog(MenuController.class);

	@Autowired
	private MenuService menuService;

	@RequestMapping(value = "/menulist")
	@ResponseBody
	public Object menuList(HttpServletRequest request, HttpServletResponse response) {
		Result result = new Result();
		try {
			List<Menu> menus = menuService.getAllMenus();
			log.info(JSONArray.toJSONString(menus));
			result.setStatus(true);
			result.setObj(JSONArray.toJSONString(menus));
			return menus;
		} catch (Exception e) {
			log.error("", e);
			result.setStatus(false);
			result.setObj(e.getMessage());
		}
		return result;
	}

	@RequestMapping(value = "/menu")
	public Object menu(HttpServletRequest request, HttpServletResponse response) {
		return "/menu/menu";
	}
}
