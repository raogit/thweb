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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.category.Category;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.picture.Picture;
import com.tianhong.domain.store.PreBuy;
import com.tianhong.domain.user.User;
import com.tianhong.service.category.CategoryService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.picture.PictureService;
import com.tianhong.service.store.PreBuyService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/store/prebuy")
public class PreBuyController extends BaseController {

	private static final Log log = LogFactory.getLog(PreBuyController.class);

	@Autowired
	private PreBuyService preBuyService;
	@Autowired
	private MenuService menuService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private PictureService pictureService;

	@RequestMapping(value = "/index")
	public Object index(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("menuId", menuId);
			List<Menu> subMenus = menuService.getSubMenus(162, true);
			model.put("subMenus", subMenus);
			List<Picture> pictures = pictureService.findByMenuId(menuId);
			model.put("pictures", pictures);
			Category category = new Category();
			category.setMenuId(menuId);
			List<Category> categorys = categoryService.getList(category);
			List<PreBuy> preBuyList = new ArrayList<PreBuy>();
			for (Category cate : categorys) {
				List<PreBuy> preBuys = preBuyService.getList(cate.getId());
				cate.setPreBuys(preBuys);
				preBuyList.addAll(preBuys);
			}
			try {
				int categoryId = Integer.parseInt(request.getParameter("categoryId"));
				if (categoryId > 0) {
					preBuyList.clear();
					preBuyList = preBuyService.getList(categoryId);
					Category ca = categoryService.getByPrimaryKey(categoryId);
					if (ca != null) {
						model.put("categoryName", ca.getName());
					} else {
						model.put("categoryName", "节日必须");
					}
				}
			} catch (Exception e) {
				model.put("categoryName", "节日必须");
			}

			model.put("categorys", categorys);
			model.put("preBuyList", preBuyList);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/store/PreOrder/default", model);
	}

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
