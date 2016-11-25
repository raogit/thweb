/**
 * 
 */
package com.tianhong.controller.store;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.store.NewActivity;
import com.tianhong.domain.user.User;
import com.tianhong.service.store.NewActivityService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/newactivity")
public class NewActivityController extends BaseController {

	private static final Log log = LogFactory.getLog(NewActivityController.class);

	@Autowired
	private NewActivityService newActivityService;

	@RequestMapping(value = "/newactivity-info")
	public Object info(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/store/newactivity-info", map);
	}

	@RequestMapping(value = "/recommend")
	public Object recommend(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/store/recommend", map);
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(NewActivity newActivity, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			return newActivityService.saveOrUpdate(newActivity, user);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("categoryId") int categoryId, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			return newActivityService.getByCategoryId(categoryId);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return newActivityService.deleteByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
