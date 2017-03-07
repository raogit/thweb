/**  
 * @Title: AboutThController.java
 * @Package com.tianhong.controller.web
 * @Description: 描述
 * @author xing
 * @date 2016年9月20日 下午2:59:04
 */
package com.tianhong.controller.web;

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
import com.tianhong.domain.user.User;
import com.tianhong.domain.web.DevelopHistory;
import com.tianhong.service.web.DevelopHistoryService;
import com.tianhong.utils.DateUtils;

/**
 * ClassName: AboutThController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年9月20日 下午2:59:04
 */
@Controller
@RequestMapping(value = "/web/about/history")
public class HistoryController extends BaseController {

	private static final Log log = LogFactory.getLog(HistoryController.class);

	@Autowired
	private DevelopHistoryService developHistoryService;

	@RequestMapping(value = "/index")
	public Object history(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/history", model);
	}

	@RequestMapping(value = "/awards")
	public Object awards(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/awards", model);
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(DevelopHistory developHistory, HttpServletRequest request, HttpServletResponse response) {
		try {
			developHistory.setOrderBy(CommonConstant.ORDER_BY_ASC);
			return developHistoryService.getPage(developHistory);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/commomWealPage")
	@ResponseBody
	public Object commomWealPage(DevelopHistory developHistory, HttpServletRequest request, HttpServletResponse response) {
		try {
			developHistory.setOrderBy(CommonConstant.DESC);
			return developHistoryService.getCommomWealPage(developHistory);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(DevelopHistory developHistory, HttpServletRequest request, HttpServletResponse response) {
		try {
			return developHistoryService.getList(developHistory);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(DevelopHistory developHistory, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			try {
				developHistory.setEventTime(DateUtils.parseDate(developHistory.getEventTimeStr(), CommonConstant.YYYY_MM_dd));
			} catch (Exception e) {
			}

			return developHistoryService.saveOrUpdate(developHistory, user);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return developHistoryService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return developHistoryService.deleteByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
