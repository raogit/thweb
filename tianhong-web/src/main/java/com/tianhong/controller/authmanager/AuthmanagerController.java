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

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

	@RequestMapping(value = "/role")
	public Object menuList(HttpServletRequest request, HttpServletResponse response) {
		return "/auth-manager/role";
	}
}
