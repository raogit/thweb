/**  
 * @Title: StoreNewsController.java
 * @Package com.tianhong.controller.store
 * @Description: 描述
 * @author xing
 * @date 2016年9月19日 上午10:09:05
 */
package com.tianhong.controller.store;

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

import com.tianhong.constant.CommonConstant;
import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.store.StoreNews;
import com.tianhong.domain.user.User;
import com.tianhong.service.store.StoreNewsService;
import com.tianhong.utils.DateUtils;

/**
 * ClassName: StoreNewsController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年9月19日 上午10:09:05
 */
@Controller
@RequestMapping(value = "/store/news")
public class StoreNewsController extends BaseController {
	private static final Log log = LogFactory.getLog(StoreNewsController.class);

	@Autowired
	private StoreNewsService storeNewsService;

	@RequestMapping(value = "/storenews-list")
	public Object index(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/store/storenews-list", map);
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(StoreNews storeNews, HttpServletRequest request, HttpServletResponse response) {
		try {
			return storeNewsService.getPage(storeNews);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(StoreNews storeNews, HttpServletRequest request, HttpServletResponse response) {
		try {
			return storeNewsService.getList(storeNews);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(StoreNews storeNews, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			storeNews
					.setStartTime(DateUtils.parseDate(storeNews.getStartTimeStr(), CommonConstant.YYYY_MM_dd_HH_mm_ss));
			storeNews.setEndTime(DateUtils.parseDate(storeNews.getEndTimeStr(), CommonConstant.YYYY_MM_dd_HH_mm_ss));
			return storeNewsService.saveOrUpdate(storeNews, user);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return storeNewsService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return storeNewsService.deleteByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
