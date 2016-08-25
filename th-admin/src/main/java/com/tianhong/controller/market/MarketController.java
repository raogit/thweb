/**
 * 
 */
package com.tianhong.controller.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.market.Market;
import com.tianhong.domain.user.User;
import com.tianhong.service.market.MarketService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/market")
public class MarketController extends BaseController {

	private static final Log log = LogFactory.getLog(MarketController.class);

	@Autowired
	private MarketService marketService;

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object edit(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			Market market = marketService.getByPrimaryKeyWithBLOBs(id);
			return market;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(Market market, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			return marketService.saveOrUpdate(market, user);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return marketService.delete(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(Market market, HttpServletRequest request, HttpServletResponse response) {
		try {
			return marketService.page(market);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/jsp")
	public Object jsp(Market market, HttpServletRequest request, HttpServletResponse response) {
		return "/market/list";
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(Market market, HttpServletRequest request, HttpServletResponse response) {
		try {
			return marketService.list(market);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
