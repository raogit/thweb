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

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.user.User;
import com.tianhong.domain.web.DevelopHistory;
import com.tianhong.service.web.DevelopHistoryService;

/**
 * ClassName: AboutThController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年9月20日 下午2:59:04
 */
@Controller
@RequestMapping(value = "/web/about")
public class AboutThController extends BaseController {

	private static final Log log = LogFactory.getLog(AboutThController.class);

	@Autowired
	private DevelopHistoryService developHistoryService;

	@RequestMapping(value = "/history")
	public Object history(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("menu", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/aboutUs/history", model);
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(DevelopHistory developHistory, HttpServletRequest request, HttpServletResponse response) {
		try {
			return developHistoryService.getPage(developHistory);
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
