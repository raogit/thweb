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

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.controller.base.BaseController;
import com.tianhong.controller.menu.MenuController;
import com.tianhong.domain.user.User;
import com.tianhong.page.Page;
import com.tianhong.service.user.UserService;
import com.tianhong.utils.AssertUtils;

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
			AssertUtils.notNull(user, "用户对象为空");
			user.setCreateId(getCurrentUser(request).getId());
			return userService.insertUser(user);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/update")
	@ResponseBody
	public Object update(User user, HttpServletRequest request, HttpServletResponse response) {
		try {
			AssertUtils.notNull(user, "用户对象为空");
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
	public Object page(Page page, HttpServletRequest request, HttpServletResponse response) {
		try {
			List<User> list = userService.getPageUsers(page);
			int count = userService.getCount(page);
			page.setObj(list);
			page.setTotalRow(count);
		} catch (Exception e) {
			log.error("", e);
		}
		return page;
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

}
