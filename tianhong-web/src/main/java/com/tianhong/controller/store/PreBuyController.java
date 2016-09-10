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
import com.tianhong.domain.store.PreBuy;
import com.tianhong.domain.user.User;
import com.tianhong.service.store.PreBuyService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/prebuy")
public class PreBuyController extends BaseController {

	private static final Log log = LogFactory.getLog(PreBuyController.class);

	@Autowired
	private PreBuyService preBuyService;

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(PreBuy preBuy, HttpServletRequest request, HttpServletResponse response) {
		try {
			return preBuyService.getPage(preBuy);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(PreBuy preBuy, HttpServletRequest request, HttpServletResponse response) {
		try {
			return preBuyService.getList(preBuy);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/prebuy-list")
	public Object index(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/store/prebuy-list", map);
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(PreBuy preBuy, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			return preBuyService.saveOrUpdate(preBuy, user);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return preBuyService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return preBuyService.deleteByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
