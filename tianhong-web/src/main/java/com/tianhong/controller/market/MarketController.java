/**
 * 
 */
package com.tianhong.controller.market;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.constant.CommonConstant;
import com.tianhong.domain.content.Content;
import com.tianhong.domain.market.Market;
import com.tianhong.domain.market.MarketNews;
import com.tianhong.domain.path.BasePath;
import com.tianhong.domain.picture.Picture;
import com.tianhong.service.content.ContentService;
import com.tianhong.service.market.MarketNewsService;
import com.tianhong.service.market.MarketService;
import com.tianhong.service.path.BasePathService;
import com.tianhong.service.picture.PictureService;
import com.tianhong.utils.DateUtils;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/market")
public class MarketController {
	private static final Log log = LogFactory.getLog(MarketController.class);

	@Autowired
	private MarketService marketService;
	@Autowired
	private BasePathService basePathService;
	@Autowired
	private MarketNewsService marketNewsService;

	@Autowired
	private PictureService pictureService;

	@Autowired
	private ContentService contentService;

	@RequestMapping(value = "/index")
	public Object index(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Market market = new Market();
			List<Market> markets = marketService.list(market);
			model.put("markets", markets);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/market2/default", model);
	}

	@RequestMapping(value = "/introduction")
	public Object introduction(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			String back = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
			String basePath = (String) request.getSession().getAttribute(CommonConstant.PLAT_FORM_BACK);
			if (basePath == null) {
				BasePath base = basePathService.getByFlatForm(CommonConstant.PLAT_FORM_BACK);
				request.getSession().setAttribute(CommonConstant.PLAT_FORM_BACK, base.getBasePath());
			}
			Market market = new Market();
			List<Market> list = marketService.list(market);
			Market m;
			String name = request.getParameter("searchName");
			String marketId = request.getParameter("marketId");

			if (StringUtils.isNotEmpty(marketId) && StringUtils.isNotEmpty(marketId.trim())) {
				m = marketService.getByPrimaryKey(Integer.parseInt(marketId.trim()));
			} else {
				m = list.get(0);
			}
			model.put("list", list);
			model.put("first", m);

			List<MarketNews> newsList = marketNewsService.list(m.getId(), CommonConstant.TYPE_NEWS_1);
			for (MarketNews marketNew : newsList) {
				marketNew.setCreateTimeStr(DateUtils.parseString(marketNew.getCreateTime(), CommonConstant.YYYY_MM_dd_HH_mm_ss));
				if (StringUtils.isNotEmpty(back) && StringUtils.isNotEmpty(basePath)) {
					String content = marketNew.getContent().replaceAll(basePath, back);
					marketNew.setContent(content);
				}
			}
			List<MarketNews> activityList = marketNewsService.list(m.getId(), CommonConstant.TYPE_ACTIVITY_2);
			for (MarketNews marketNew : activityList) {
				marketNew.setCreateTimeStr(DateUtils.parseString(marketNew.getCreateTime(), CommonConstant.YYYY_MM_dd_HH_mm_ss));
				if (StringUtils.isNotEmpty(back) && StringUtils.isNotEmpty(basePath)) {
					String content = marketNew.getContent().replaceAll(basePath, back);
					marketNew.setContent(content);
				}
			}

			model.put("newsList", newsList);
			model.put("activityList", activityList);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/market2/introduction", model);
	}

	@RequestMapping(value = "/shopnews")
	@ResponseBody
	public Object shopNews(HttpServletRequest request, HttpServletResponse response) {
		try {
			String back = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
			String basePath = (String) request.getSession().getAttribute(CommonConstant.PLAT_FORM_BACK);
			if (basePath == null) {
				BasePath base = basePathService.getByFlatForm(CommonConstant.PLAT_FORM_BACK);
				request.getSession().setAttribute(CommonConstant.PLAT_FORM_BACK, base.getBasePath());
			}
			int id = Integer.parseInt(request.getParameter("id"));
			MarketNews marketNews = marketNewsService.getByPrimaryKey(id);
			if (marketNews != null) {
				marketNews.setCreateTimeStr(DateUtils.parseString(marketNews.getCreateTime(), CommonConstant.YYYY_MM_dd_HH_mm_ss));
				if (StringUtils.isNotEmpty(back) && StringUtils.isNotEmpty(basePath)) {
					String content = marketNews.getContent().replaceAll(basePath, back);
					marketNews.setContent(marketNews.getContent().replaceAll(basePath, back));
				}
			}

			return marketNews;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/manage")
	public Object manage(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			List<Picture> pictures = pictureService.findByMenuId(156);
			Content content = contentService.getByMenuId(156);
			model.put("pictures", pictures);
			model.put("content", content);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/market/management2", model);
	}
}
