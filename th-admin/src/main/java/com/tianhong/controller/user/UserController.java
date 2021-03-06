/**  
 * @Title: UserController.java
 * @Package com.tianhong.controller.user
 * @Description: 描述
 * @author xing
 * @date 2016年7月13日 下午3:46:52
 */
package com.tianhong.controller.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.controller.base.BaseController;
import com.tianhong.controller.menu.MenuController;
import com.tianhong.domain.user.User;
import com.tianhong.service.user.UserService;
import com.tianhong.utils.AssertUtils;
import com.tianhong.utils.MD5;

/**
 * ClassName: UserController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月13日 下午3:46:52
 */
@Controller
@RequestMapping(value = "/user")
public class UserController extends BaseController {

	private static final Log log = LogFactory.getLog(MenuController.class);

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/add")
	@ResponseBody
	public Object add(User user, HttpServletRequest request, HttpServletResponse response) {
		try {
			user.setCreateId(getCurrentUser(request).getId());
			return userService.insertUser(user);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/edit")
	@ResponseBody
	public Object edit(User user, HttpServletRequest request, HttpServletResponse response) {
		try {
			AssertUtils.notNull(user, "用户对象为空");
			if (StringUtils.isNotEmpty(user.getPassword())) {
				user.setPassword(MD5.GetMD5Code(user.getPassword()));
			}
			user.setUpdateId(getCurrentUser(request).getId());
			return userService.updateUser(user);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(HttpServletRequest request, HttpServletResponse response) {
		try {
			return userService.getAllUsers();
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(User user, HttpServletRequest request, HttpServletResponse response) {
		try {
			user.setUserName(user.getUserName().trim());
			List<User> list = userService.getPageUsers(user);
			int count = userService.getCount(user);
			user.setObj(list);
			user.setTotalRow(count);
		} catch (Exception e) {
			log.error("", e);
		}
		return user;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(User user, HttpServletRequest request, HttpServletResponse response) {
		try {
			return userService.deleteByPrimaryKey(user.getId());
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(User user, HttpServletRequest request, HttpServletResponse response) {
		try {
			return userService.getByPrimaryKey(user.getId());
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/updatepass")
	@ResponseBody
	public Object updatePass(HttpServletRequest request, HttpServletResponse response) {
		try {
			String pass = request.getParameter("password");
			User user = this.getCurrentUser(request);
			if (StringUtils.isNotEmpty(pass)) {
				user.setPassword(MD5.GetMD5Code(pass));
			}
			user.setUpdateId(getCurrentUser(request).getId());
			return userService.updateUser(user);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/setting")
	public Object logout(HttpServletRequest request, HttpServletResponse response) {
		return "/user/setting";

	}
}
