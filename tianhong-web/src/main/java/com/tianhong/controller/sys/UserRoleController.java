/**
 * 
 */
package com.tianhong.controller.sys;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.sys.SysRole;
import com.tianhong.domain.user.User;
import com.tianhong.service.sys.SysUserRoleService;
import com.tianhong.utils.AssertUtils;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/userrole")
public class UserRoleController extends BaseController {

	private static final Log log = LogFactory.getLog(UserRoleController.class);
	@Autowired
	private SysUserRoleService sysUserRoleService;

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(@RequestParam("userId") int userId, HttpServletRequest request, HttpServletResponse response) {
		try {
			List<SysRole> userRoles = sysUserRoleService.getUserRoles(userId);
			return userRoles;
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(@RequestParam("userId") int userId, @RequestParam("roleIds") String roleIds,
			@RequestParam("menuIds") String menuIds, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);

			AssertUtils.isTrue(StringUtils.isNotEmpty(roleIds) || StringUtils.isNotEmpty(menuIds), "角色或权限必须勾选其中之一");
			return sysUserRoleService.saveRoleAndMenu(userId, roleIds, menuIds, user);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
