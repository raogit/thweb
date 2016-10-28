/**  
 * @Title: HomePageController.java
 * @Package com.tianhong.controller.shoppingcenter
 * @Description: 描述
 * @author xing
 * @date 2016年10月26日 下午2:51:05
 */
package com.tianhong.controller.shoppingcenter;

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

import com.tianhong.domain.content.Content;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.web.DevelopHistory;
import com.tianhong.service.content.ContentService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.newscenter.NewsCenterService;
import com.tianhong.service.picture.PictureService;
import com.tianhong.service.web.DevelopHistoryService;

/**
 * ClassName: HomePageController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年10月26日 下午2:51:05
 */
@Controller
@RequestMapping(value = "/shopping/service")
public class ServiceCenterController {

	private static final Log log = LogFactory.getLog(ServiceCenterController.class);
	@Autowired
	private MenuService menuService;
	@Autowired
	private ContentService contentService;
	@Autowired
	private NewsCenterService newsCenterService;
	@Autowired
	private PictureService pictureService;
	@Autowired
	private DevelopHistoryService developHistoryService;

	@RequestMapping(value = "/index")
	public Object index(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("parentMenu", menu);
			List<Menu> headMenus = menuService.getSubs(259, true);
			model.put("headMenus", headMenus);

			List<Menu> subShowMenus = menuService.getSubs(menuId, true);
			model.put("subShowMenus", subShowMenus);
			for (Menu m : subShowMenus) {
				if (m.getName().equals("客服平台")) {
					model.put("menu", m);
					List<Menu> customers = menuService.getSubs(m.getId(), false);
					for (Menu nu : customers) {
						List<DevelopHistory> developHistorys = developHistoryService.getList(nu.getId());
						nu.getDevelopHistorys().addAll(developHistorys);
					}
					model.put("customers", customers);
					break;
				}
			}
			for (Menu m : subShowMenus) {
				if (m.getName().equals("常见问题")) {
					DevelopHistory develop = new DevelopHistory();
					develop.setPageSize(4);
					if (develop.getCurPage() <= 1) {
						develop.setCurPage(1);
					}
					develop.setMenuId(m.getId());
					DevelopHistory problems = developHistoryService.getPage(develop);
					model.put("problems", problems);
					break;
				}
			}
			for (Menu m : subShowMenus) {
				if (m.getName().equals("泊车服务")) {
					Content parking = contentService.getByMenuId(m.getId());
					model.put("parking", parking);
					break;
				}
			}

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/shoppingcenter/service-center", model);
	}

	@RequestMapping(value = "/center")
	public Object center(DevelopHistory developHistory, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			developHistory.setPageSize(4);
			if (developHistory.getCurPage() <= 1) {
				developHistory.setCurPage(1);
			}
			Menu menu = menuService.getByPrimaryKey(developHistory.getMenuId());
			Menu parentMenu = menuService.getByPrimaryKey(menu.getParentId());
			model.put("menu", menu);
			model.put("parentMenu", parentMenu);
			List<Menu> subShowMenus = menuService.getSubs(menu.getParentId(), true);
			model.put("subShowMenus", subShowMenus);

			List<Menu> headMenus = menuService.getSubs(259, true);
			model.put("headMenus", headMenus);

			List<Menu> subs = menuService.getSubs(menu.getParentId(), false);
			for (Menu m : subs) {
				if (m.getName().equals("客服平台")) {
					List<Menu> customers = menuService.getSubs(m.getId(), false);
					for (Menu nu : customers) {
						List<DevelopHistory> developHistorys = developHistoryService.getList(nu.getId());
						nu.getDevelopHistorys().addAll(developHistorys);
					}
					model.put("customers", customers);
					break;
				}
			}
			for (Menu m : subShowMenus) {
				if (m.getName().equals("常见问题")) {
					DevelopHistory develop = new DevelopHistory();
					develop.setPageSize(developHistory.getPageSize());
					if (developHistory.getMenuId().intValue() == m.getId().intValue()) {
						develop.setCurPage(developHistory.getCurPage());
					}
					if (develop.getCurPage() <= 1) {
						develop.setCurPage(1);
					}
					develop.setMenuId(m.getId());
					DevelopHistory problems = developHistoryService.getPage(develop);
					model.put("problems", problems);
					break;
				}
			}
			for (Menu m : subShowMenus) {
				if (m.getName().equals("泊车服务")) {
					Content parking = contentService.getByMenuId(m.getId());
					model.put("parking", parking);
					break;
				}
			}
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/shoppingcenter/service-center", model);
	}

}
