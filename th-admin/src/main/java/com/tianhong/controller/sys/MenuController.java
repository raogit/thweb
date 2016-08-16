/**  
 * @Title: RoleController.java
 * @Package com.tianhong.controller.sys
 * @Description: 描述
 * @author xing
 * @date 2016年7月19日 下午2:25:17
 */
package com.tianhong.controller.sys;

import java.util.Date;

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
import com.tianhong.domain.user.User;
import com.tianhong.service.sys.SysMenuService;
import com.tianhong.utils.AssertUtils;

/**
 * ClassName: RoleController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月19日 下午2:25:17
 */
@Controller
@RequestMapping("/menu")
public class MenuController extends BaseController {

	private static final Log log = LogFactory.getLog(MenuController.class);
	@Autowired
	private SysMenuService sysMenuService;

	@RequestMapping(value = "/list")
	public Object menu(HttpServletRequest request, HttpServletResponse response) {
		return "/sys/menu-list";
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(Menu menu, HttpServletRequest request, HttpServletResponse response) {
		try {
			menu.setName(menu.getName().trim());
			return sysMenuService.getPageRoles(menu);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return sysMenuService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/add")
	@ResponseBody
	public Object add(Menu menu, HttpServletRequest request, HttpServletResponse response) {
		try {
			Menu m = sysMenuService.getByName(menu.getName());
			AssertUtils.isNull(m, "角色已存在");
			User user = getCurrentUser(request);
			menu.setCreateId(user.getCreateId());
			menu.setCreateTime(new Date());
			return sysMenuService.insertSelective(menu);
		} catch (Exception e) {
			log.error("", e);

		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			Menu menu = sysMenuService.getByPrimaryKey(id);
			AssertUtils.notNull(menu, "角色不存在");
			menu.setIsDeleted(true);
			menu.setUpdateTime(new Date());
			menu.setUpdateId(user.getId());
			return sysMenuService.updateByPrimaryKeySelective(menu);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/edit")
	@ResponseBody
	public Object edit(Menu menu, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			menu.setUpdateTime(new Date());
			menu.setUpdateId(user.getId());
			return sysMenuService.updateByPrimaryKeySelective(menu);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

}
