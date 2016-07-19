/**
 * 
 */
package com.tianhong.controller.sys;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.menu.Menu;
import com.tianhong.service.sys.SysUserMenuService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/usermenu")
public class UserMenuController extends BaseController {

	private static final Log log = LogFactory.getLog(UserMenuController.class);

	@Autowired
	private SysUserMenuService sysUserMenuService;

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(@RequestParam("userId") int userId, HttpServletRequest request, HttpServletResponse response) {
		try {
			List<Menu> userMenus = sysUserMenuService.getUserMenus(userId);
			return userMenus;
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}
}
