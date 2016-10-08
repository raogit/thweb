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
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.domain.category.Category;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.picture.Picture;
import com.tianhong.domain.store.NewProduct;
import com.tianhong.domain.store.StoreNews;
import com.tianhong.domain.store.StoreProduct;
import com.tianhong.service.category.CategoryService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.picture.PictureService;
import com.tianhong.service.store.NewProductService;
import com.tianhong.service.store.StoreNewsService;
import com.tianhong.service.store.StoreProductService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/store")
public class StoreController {

	private static final Log log = LogFactory.getLog(StoreController.class);

	@Autowired
	private MenuService menuService;

	@Autowired
	private PictureService pictureService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private NewProductService newProductService;
	@Autowired
	private StoreProductService storeProductService;
	@Autowired
	private StoreNewsService storeNewsService;

	@RequestMapping(value = "/index")
	public Object index(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			List<Menu> subMenus = menuService.getSubMenus(162, true);
			model.put("subMenus", subMenus);
			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);
			// 新品上市
			Category category = new Category();
			category.setMenuId(166);
			List<Category> categorys = categoryService.getList(category);
			List<NewProduct> newProductList = new ArrayList<NewProduct>();
			for (Category cate : categorys) {
				List<NewProduct> newProducts = newProductService.getList(cate.getId());
				cate.setNewProducts(newProducts);
				newProductList.addAll(newProducts);
			}
			model.put("newProductList", newProductList);
			// 商品
			category = new Category();
			category.setMenuId(164);
			categorys = categoryService.getList(category);
			List<StoreProduct> storeProductsList = new ArrayList<StoreProduct>();
			for (Category cate : categorys) {
				List<StoreProduct> storeProducts = storeProductService.getList(cate.getId());
				cate.setStoreProducts(storeProducts);
				storeProductsList.addAll(storeProducts);
			}
			model.put("storeProductsList", storeProductsList);
			// 最新消息
			StoreNews storeNews = new StoreNews();
			storeNews.setMenuId(163);
			List<StoreNews> newsList = storeNewsService.getList(storeNews);
			model.put("newsList", newsList);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/store/default", model);
	}

	@RequestMapping(value = "/newinfo")
	public Object newInfo(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			List<Menu> subMenus = menuService.getSubMenus(162, true);
			model.put("subMenus", subMenus);
			List<Picture> pictures = pictureService.findByMenuId(166);
			model.put("pictures", pictures);
			// 最新消息

			int curPage = 1;
			try {
				curPage = Integer.parseInt(request.getParameter("curPage"));
			} catch (Exception e) {
			}

			StoreNews storeNews = new StoreNews();
			storeNews.setMenuId(163);
			storeNews.setCurPage(curPage);
			storeNews.setPageSize(4);
			StoreNews news = storeNewsService.getPage(storeNews);
			model.put("news", news);
			List<Integer> pageFoot = new ArrayList<Integer>();
			for (int i = 1; i <= news.getTotalPage(); i++) {
				pageFoot.add(i);
			}
			model.put("pageFoot", pageFoot);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/store/newinfo", model);
	}
}
