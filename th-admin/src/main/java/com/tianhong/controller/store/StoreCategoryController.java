/**
 * 
 */
package com.tianhong.controller.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.store.StoreCategory;
import com.tianhong.service.store.StoreCategoryService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/storecategory")
public class StoreCategoryController extends BaseController {

	private static final Log log = LogFactory.getLog(StoreCategoryController.class);

	@Autowired
	private StoreCategoryService storeCategoryService;

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(StoreCategory storeCategory, HttpServletRequest request, HttpServletResponse response) {
		try {
			storeCategoryService.getPage(storeCategory);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(StoreCategory storeCategory, HttpServletRequest request, HttpServletResponse response) {
		try {
			storeCategoryService.getList(storeCategory);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

}
