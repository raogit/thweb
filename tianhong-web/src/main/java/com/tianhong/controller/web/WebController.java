/**
 * 
 */
package com.tianhong.controller.web;

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

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.newscenter.NewsCenter;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.newscenter.NewsCenterService;
import com.tianhong.utils.HttpClientUtils;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/web")
public class WebController extends BaseController {

	private static final Log log = LogFactory.getLog(WebController.class);
	@Autowired
	private MenuService menuService;
	@Autowired
	private NewsCenterService newsCenterService;

	@RequestMapping(value = "/index")
	public Object index(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			int menuId = 172;
			model.put("menu", menuService.getByPrimaryKey(menuId));
			List<Menu> headMenus = menuService.getSubMenus(menuId, true);
			model.put("headMenus", headMenus);

			model.put("parentMenu", headMenus.get(0));

			NewsCenter newsCenter = new NewsCenter();
			newsCenter.setMenuId(179);
			List<NewsCenter> newsList = newsCenterService.getList(newsCenter);
			model.put("news", newsList.get(0));
			String body = HttpClientUtils.httpGet("http://hq.sinajs.cn/list=sz002419");
			log.info(body);
			String[] shares1 = body.split("=");
			String[] shares2 = shares1[1].split(",");
			model.put("shares", shares2[3].substring(0, 5));
			model.put("sharesTime", shares2[30] + ":" + shares2[31]);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/index", model);
	}
}
