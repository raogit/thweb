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

import com.tianhong.constant.CommonConstant;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.newscenter.NewsCenter;
import com.tianhong.domain.picture.Picture;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.newscenter.NewsCenterService;
import com.tianhong.service.picture.PictureService;
import com.tianhong.utils.DateUtils;
import com.tianhong.utils.HttpClientUtils;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/web")
public class WebController {

	private static final Log log = LogFactory.getLog(WebController.class);
	@Autowired
	private MenuService menuService;
	@Autowired
	private NewsCenterService newsCenterService;
	@Autowired
	private PictureService pictureService;

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
			NewsCenter news = newsList.get(0);
			news.setNewsTimeStr(DateUtils.parseString(news.getNewsTime(), CommonConstant.YYYY_MM_dd_POINT));
			model.put("news", news);
			String body = HttpClientUtils.httpGet("http://hq.sinajs.cn/list=sz002419");
			log.info(body);
			String[] shares1 = body.split("=");
			String[] shares2 = shares1[1].split(",");
			model.put("shares", shares2[3].substring(0, 5));
			model.put("sharesTime", shares2[30] + " " + shares2[31]);

			List<Picture> pictures = pictureService.findByMenuId(173);
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/index", model);
	}
}
