/**  
 * @Title: UserController.java
 * @Package com.tianhong.controller.user
 * @Description: 描述
 * @author xing
 * @date 2016年7月13日 下午3:46:52
 */
package com.tianhong.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.controller.menu.MenuController;
import com.tianhong.domain.user.User;

/**
 * ClassName: UserController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月13日 下午3:46:52
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

	private static final Log log = LogFactory.getLog(MenuController.class);

	@RequestMapping(value = "/add")
	@ResponseBody
	public Object add(User user, HttpServletRequest request, HttpServletResponse response) {
		try {

		} catch (Exception e) {
			log.error("", e);

		}
		return null;
	}
}
