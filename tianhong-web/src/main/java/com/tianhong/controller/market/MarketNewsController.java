/**  
 * @Title: MarketNewsController.java
 * @Package com.tianhong.controller.market
 * @Description: 描述
 * @author xing
 * @date 2016年8月25日 上午9:58:33
 */
package com.tianhong.controller.market;

import java.util.HashMap;
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
import com.tianhong.domain.market.Market;
import com.tianhong.domain.market.MarketNews;
import com.tianhong.domain.user.User;
import com.tianhong.service.market.MarketNewsService;

/**
 * ClassName: MarketNewsController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月25日 上午9:58:33
 */
@Controller
@RequestMapping("/marketnews")
public class MarketNewsController extends BaseController {
	private static final Log log = LogFactory.getLog(MarketNewsController.class);
	@Autowired
	private MarketNewsService marketNewsService;

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object edit(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			MarketNews marketNews = marketNewsService.getByPrimaryKeyWithBLOBs(id);
			return marketNews;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(MarketNews marketNews, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			return marketNewsService.saveOrUpdate(marketNews, user);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return marketNewsService.delete(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(MarketNews marketNews, HttpServletRequest request, HttpServletResponse response) {
		try {
			return marketNewsService.page(marketNews);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(MarketNews marketNews, HttpServletRequest request, HttpServletResponse response) {
		try {
			return marketNewsService.list(marketNews);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/news")
	public Object jsp(Market market, HttpServletRequest request, HttpServletResponse response) {

		Map<String, Object> model = new HashMap<String, Object>();
		model.put("type", 1);

		return new ModelAndView("/market/news/list", model);
	}

	@RequestMapping(value = "/activity")
	public Object activity(Market market, HttpServletRequest request, HttpServletResponse response) {

		Map<String, Object> model = new HashMap<String, Object>();
		model.put("type", 2);

		return new ModelAndView("/market/news/list", model);
	}

	@RequestMapping(value = "/deletepicture")
	@ResponseBody
	public Object deletePicture(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return marketNewsService.deletePicture(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
