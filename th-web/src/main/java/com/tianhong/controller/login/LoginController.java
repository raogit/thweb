/**
 * 
 */
package com.tianhong.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tianhong.constant.UserConstant;
import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.user.User;

/**
 * @author Administrator
 *
 */
@Controller
public class LoginController extends BaseController {

	private static final Log log = LogFactory.getLog(LoginController.class);

	@RequestMapping(value = "/login")
	public Object login(HttpServletRequest request, HttpServletResponse response) {
		return "login";
	}

	@RequestMapping(value = "/loginconfirm")
	public Object loginConfirm(HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = new User();
			request.getSession().setAttribute(UserConstant.USER, user);

		} catch (Exception e) {
			log.error("", e);
			return "/login";
		}
		return "/menu/menu";
	}

	@RequestMapping(value = "/logout")
	public Object logout(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().removeAttribute(UserConstant.USER);
		String url = getUrl(request);
		return "redirect:" + url + "/login";

	}
}