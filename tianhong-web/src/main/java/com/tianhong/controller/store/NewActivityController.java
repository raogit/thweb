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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.category.Category;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.picture.Picture;
import com.tianhong.domain.store.NewActivity;
import com.tianhong.domain.store.StoreProduct;
import com.tianhong.domain.user.User;
import com.tianhong.service.category.CategoryService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.picture.PictureService;
import com.tianhong.service.store.NewActivityService;
import com.tianhong.service.store.StoreProductService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/store/newactivity")
public class NewActivityController extends BaseController {

	private static final Log log = LogFactory.getLog(NewActivityController.class);
	@Autowired
	private MenuService menuService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private PictureService pictureService;
	@Autowired
	private StoreProductService storeProductService;
	@Autowired
	private NewActivityService newActivityService;

	@RequestMapping(value = "/index")
	public Object index(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("menu", menuService.getByPrimaryKey(menuId));
			List<Menu> subMenus = menuService.getSubMenus(162, true);
			model.put("subMenus", subMenus);
			List<Picture> pictures = pictureService.findByMenuId(menuId);
			model.put("pictures", pictures);
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
		return new ModelAndView("/store/Activity/default", model);
	}

	@RequestMapping(value = "/detail")
	public Object detail(@RequestParam("categoryId") int categoryId, @RequestParam("menuId") int menuId,
			HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("menu", menuService.getByPrimaryKey(menuId));
			List<Menu> subMenus = menuService.getSubMenus(162, true);
			model.put("subMenus", subMenus);
			NewActivity activity = newActivityService.getByCategoryId(categoryId);
			model.put("activity", activity);
			List<Picture> pictures = pictureService.findByMenuId(166);
			model.put("pictures", pictures);
			Category category = new Category();
			category.setMenuId(menuId);
			List<Category> categorys = categoryService.getList(category);
			for (Category cate : categorys) {
				List<StoreProduct> storeProducts = storeProductService.getList(cate.getId());
				cate.setStoreProducts(storeProducts);
			}
			model.put("categorys", categorys);

			model.put("category", categoryService.getByPrimaryKey(categoryId));
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/store/Activity/detail", model);
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
