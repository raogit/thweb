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
import com.tianhong.domain.store.NewProduct;
import com.tianhong.domain.user.User;
import com.tianhong.service.store.NewProductService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/newproduct")
public class NewProductController extends BaseController {

	private static final Log log = LogFactory.getLog(NewProductController.class);

	@Autowired
	private NewProductService newProductService;

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(NewProduct newProduct, HttpServletRequest request, HttpServletResponse response) {
		try {
			return newProductService.getPage(newProduct);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(NewProduct newProduct, HttpServletRequest request, HttpServletResponse response) {
		try {
			return newProductService.getList(newProduct);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/newproduct-list")
	public Object index(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/store/newproduct-list", map);
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(NewProduct newProduct, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			return newProductService.saveOrUpdate(newProduct, user);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return newProductService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return newProductService.deleteByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
