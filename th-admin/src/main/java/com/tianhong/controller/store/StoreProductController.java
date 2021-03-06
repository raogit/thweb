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
import com.tianhong.domain.store.StoreProduct;
import com.tianhong.domain.user.User;
import com.tianhong.service.store.StoreProductService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/storeproduct")
public class StoreProductController extends BaseController {

	private static final Log log = LogFactory.getLog(StoreProductController.class);

	@Autowired
	private StoreProductService storeProductService;

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(StoreProduct storeProduct, HttpServletRequest request, HttpServletResponse response) {
		try {
			return storeProductService.getPage(storeProduct);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(StoreProduct storeProduct, HttpServletRequest request, HttpServletResponse response) {
		try {
			return storeProductService.getList(storeProduct);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/storeproduct-list")
	public Object index(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/store/storeproduct-list", map);
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(StoreProduct storeProduct, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			return storeProductService.saveOrUpdate(storeProduct, user);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return storeProductService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return storeProductService.deleteByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
