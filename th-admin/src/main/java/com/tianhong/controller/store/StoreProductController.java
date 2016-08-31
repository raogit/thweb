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
import com.tianhong.domain.store.StoreProduct;
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
			storeProductService.getPage(storeProduct);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(StoreProduct storeProduct, HttpServletRequest request, HttpServletResponse response) {
		try {
			storeProductService.getList(storeProduct);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
