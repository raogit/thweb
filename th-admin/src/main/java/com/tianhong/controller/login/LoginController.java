/**
 * 
 */
package com.tianhong.controller.login;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.constant.UserConstant;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.user.User;
import com.tianhong.service.menu.MenuService;

/**
 * @author Administrator
 *
 */
@Controller
public class LoginController {

	private static final Log log = LogFactory.getLog(LoginController.class);

	@Autowired
	private MenuService menuService;

	@RequestMapping(value = "/login")
	public Object login(HttpServletRequest request, HttpServletResponse response) {
		log.info("login");
		return "login";
	}
	
	@RequestMapping(value = "/loginconfirm")
	@ResponseBody
	public Object loginconfirm(HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = new User();
			request.getSession().setAttribute(UserConstant.USER,user);
			List<Menu> menus = menuService.getAllMenus();
			return menus;
		} catch (Exception e) {
			log.error("", e);
		}
		return "login";
	}
}
