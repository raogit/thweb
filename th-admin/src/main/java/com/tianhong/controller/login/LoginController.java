/**
 * 
 */
package com.tianhong.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.constant.CommonConstant;
import com.tianhong.constant.UserConstant;
import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.user.User;
import com.tianhong.service.path.BasePathService;
import com.tianhong.service.user.UserService;
import com.tianhong.utils.AssertUtils;
import com.tianhong.utils.MD5;

/**
 * @author Administrator
 *
 */
@Controller
public class LoginController extends BaseController {

	private static final Log log = LogFactory.getLog(LoginController.class);

	@Autowired
	private UserService userService;
	@Autowired
	private BasePathService basePathService;

	@RequestMapping(value = "/login")
	public Object login(HttpServletRequest request, HttpServletResponse response) {
		try {
			String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath();
			basePathService.saveFlatForm(CommonConstant.PLAT_FORM_BACK, path);
		} catch (Exception e) {
			log.error("", e);
		}
		return "login";
	}

	@RequestMapping(value = "/loginconfirm")
	@ResponseBody
	public Object loginConfirm(User user, HttpServletRequest request, HttpServletResponse response) {
		try {
			// String userName = request.getParameter("userName");
			// String password = request.getParameter("password");
			User u = userService.getByName(user.getUserName());
			AssertUtils.notNull(u, "用户名不存在");
			AssertUtils.isTrue(MD5.GetMD5Code(user.getPassword()).equals(u.getPassword()), "密码错误");
			request.getSession().setAttribute(UserConstant.USER, u);
			return true;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/logout")
	public Object logout(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().removeAttribute(UserConstant.USER);
		String url = getUrl(request);
		return "redirect:" + url + "/login";

	}
}
