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
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.constant.CommonConstant;
import com.tianhong.domain.market.Market;
import com.tianhong.domain.market.MarketNews;
import com.tianhong.service.market.MarketNewsService;
import com.tianhong.service.market.MarketService;

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
	private MarketNewsService marketNewsService;

	@RequestMapping(value = "/index")
	public Object index(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/market/default", model);
	}

	@RequestMapping(value = "/introduction")
	public Object introduction(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Market market = new Market();
			List<Market> list = marketService.list(market);
			Market m;
			String name = request.getParameter("searchName");
			if (StringUtils.isNotEmpty(name) && StringUtils.isNotEmpty(name.trim())) {
				m = marketService.getByName(name.trim());
			} else {
				m = list.get(0);
			}
			model.put("list", list);
			model.put("first", m);

			List<MarketNews> newsList = marketNewsService.list(m.getId(), CommonConstant.TYPE_NEWS_1);
			List<MarketNews> activityList = marketNewsService.list(m.getId(), CommonConstant.TYPE_ACTIVITY_2);
			model.put("newsList", newsList);
			model.put("activityList", activityList);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/market/introduction", model);
	}

}
