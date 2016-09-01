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
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.category.Category;
import com.tianhong.service.category.CategoryService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/Category")
public class CategoryController extends BaseController {

	private static final Log log = LogFactory.getLog(CategoryController.class);

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(Category category, HttpServletRequest request, HttpServletResponse response) {
		try {
			categoryService.getPage(category);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(Category category, HttpServletRequest request, HttpServletResponse response) {
		try {
			categoryService.getList(category);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

}
