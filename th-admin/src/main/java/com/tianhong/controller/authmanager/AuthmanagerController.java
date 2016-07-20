/**  
 * @Title: AuthmanagerController.java
 * @Package com.tianhong.controller.authmanager
 * @Description: 描述
 * @author xing
 * @date 2016年7月20日 上午9:18:25
 */
package com.tianhong.controller.authmanager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tianhong.controller.menu.MenuController;

/**
 * ClassName: AuthmanagerController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月20日 上午9:18:25
 */
@Controller
@RequestMapping(value = "/authmanager")
public class AuthmanagerController {

	private static final Log log = LogFactory.getLog(MenuController.class);

	@RequestMapping(value = "/role")
	public Object menuList(HttpServletRequest request, HttpServletResponse response) {
		return "/auth-manager/role";
	}
}
