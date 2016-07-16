/**  
 * @Title: BaseController.java
 * @Package com.tianhong.controller.base
 * @Description: 描述
 * @author xing
 * @date 2016年7月15日 上午11:55:48
 */
package com.tianhong.controller.base;

import javax.servlet.http.HttpServletRequest;

import com.tianhong.constant.UserConstant;
import com.tianhong.domain.user.User;

/**
 * ClassName: BaseController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月15日 上午11:55:48
 */
public class BaseController {

	public static User getCurrentUser(HttpServletRequest request) {
		return (User) request.getSession().getAttribute(UserConstant.USER);
	}

	public static String getUrl(HttpServletRequest request) {
		return request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
				+ request.getContextPath();
	}
}
