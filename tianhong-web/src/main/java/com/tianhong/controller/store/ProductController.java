/**
 * 
 */
package com.tianhong.controller.store;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.category.Category;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.store.StoreProduct;
import com.tianhong.service.category.CategoryService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.store.StoreProductService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/store/product")
public class ProductController extends BaseController {
	private static final Log log = LogFactory.getLog(ProductController.class);
	@Autowired
	private MenuService menuService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private StoreProductService storeProductService;

	@RequestMapping(value = "/index")
	public Object index(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			List<Menu> subMenus = menuService.getSubMenus(162, true);
			model.put("subMenus", subMenus);
			Category category = new Category();
			category.setMenuId(menuId);
			List<Category> categorys = categoryService.getList(category);
			for (Category cate : categorys) {
				List<StoreProduct> storeProducts = storeProductService.getList(cate.getId());
				cate.setStoreProducts(storeProducts);
			}
			model.put("categorys", categorys);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/store/Commodity/default", model);
	}
}
