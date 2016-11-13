/**
 * 
 */
package com.tianhong.controller.store;

import java.util.ArrayList;
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
import com.tianhong.domain.picture.Picture;
import com.tianhong.domain.store.NewActivity;
import com.tianhong.service.category.CategoryService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.picture.PictureService;
import com.tianhong.service.store.NewActivityService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/store/servicejoinabout")
public class ServiceJoinAboutController extends BaseController {

	private static final Log log = LogFactory.getLog(ServiceJoinAboutController.class);

	@Autowired
	private MenuService menuService;

	@Autowired
	private PictureService pictureService;

	@Autowired
	private CategoryService categoryService;
	@Autowired
	private NewActivityService newActivityService;

	@RequestMapping(value = "/index")
	public Object index(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("menu", menuService.getByPrimaryKey(menuId));
			List<Menu> subMenus = menuService.getSubMenus(162, true);
			model.put("subMenus", subMenus);
			List<Picture> pictures = pictureService.findByMenuId(166);
			model.put("pictures", pictures);

			Category category = new Category();
			category.setMenuId(menuId);
			List<Category> categorys = categoryService.getList(category);
			model.put("categorys", categorys);
			List<NewActivity> activitys = new ArrayList<NewActivity>();
			for(Category cate : categorys){
				NewActivity activity = newActivityService.getByCategoryId(cate.getId());
				if(activity!=null){
					activity.setCategoryName(cate.getName());
					activitys.add(activity);
				}
			}
			
			model.put("activitys", activitys);
			try {
				int categoryId = Integer.parseInt(request.getParameter("categoryId"));
				if (categoryId > 0) {
					Category ca = categoryService.getByPrimaryKey(categoryId);
					if (ca != null) {
						model.put("categoryName", ca.getName());
					} else {
						model.put("categoryName", "便民服务");
					}
				}
			} catch (Exception e) {
				model.put("categoryName", "便民服务");
			}
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/store/Convenience/default", model);
	}

	@RequestMapping(value = "/detail")
	public Object detail(@RequestParam("menuId") int menuId, @RequestParam("categoryId") int categoryId,
			HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("menu", menuService.getByPrimaryKey(menuId));
			List<Menu> subMenus = menuService.getSubMenus(162, true);
			model.put("subMenus", subMenus);
			List<Picture> pictures = pictureService.findByMenuId(166);
			model.put("pictures", pictures);
			NewActivity activity = newActivityService.getByCategoryId(categoryId);
			model.put("activity", activity);
			Category category = new Category();
			category.setMenuId(menuId);
			List<Category> categorys = categoryService.getList(category);
			model.put("categorys", categorys);
			if (categoryId > 0) {
				Category ca = categoryService.getByPrimaryKey(categoryId);
				if (ca != null) {
					model.put("category", ca);
					model.put("categoryName", ca.getName());
				} else {
					model.put("categoryName", "便民服务");
				}
			}
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/store/Convenience/detail", model);
	}
}
