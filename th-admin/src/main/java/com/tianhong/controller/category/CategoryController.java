/**
 * 
 */
package com.tianhong.controller.category;

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
import com.tianhong.domain.category.Category;
import com.tianhong.domain.user.User;
import com.tianhong.service.category.CategoryService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/category")
public class CategoryController extends BaseController {

	private static final Log log = LogFactory.getLog(CategoryController.class);

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/category-list")
	public Object index(HttpServletRequest request, HttpServletResponse response) {
		return "/category/category-list";
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(Category category, HttpServletRequest request, HttpServletResponse response) {
		try {
			return categoryService.getPage(category);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(Category category, HttpServletRequest request, HttpServletResponse response) {
		try {
			return categoryService.getList(category);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(Category category, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			return categoryService.saveOrUpdate(category, user);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return categoryService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return categoryService.deleteByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/listbymenuId")
	@ResponseBody
	public Object listByMenuId(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			Category category = new Category();
			category.setMenuId(menuId);
			return categoryService.getList(category);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
