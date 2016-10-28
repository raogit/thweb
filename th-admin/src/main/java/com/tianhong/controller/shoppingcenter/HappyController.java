/**  
 * @Title: NewsCenterController.java
 * @Package com.tianhong.controller.web
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午2:39:38
 */
package com.tianhong.controller.shoppingcenter;

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
import com.tianhong.domain.newscenter.NewsCenter;
import com.tianhong.domain.user.User;
import com.tianhong.service.newscenter.NewsCenterService;
import com.tianhong.utils.DateUtils;

/**
 * ClassName: NewsCenterController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午2:39:38
 */
@Controller
@RequestMapping(value = "/shopping/happy")
public class HappyController extends BaseController {

	private static final Log log = LogFactory.getLog(HappyController.class);

	@Autowired
	private NewsCenterService newsCenterService;

	@RequestMapping(value = "/index")
	public Object info(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/shoppingcenter/happy", map);
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(NewsCenter newsCenter, HttpServletRequest request, HttpServletResponse response) {
		try {
			return newsCenterService.getPage(newsCenter);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(NewsCenter newsCenter, HttpServletRequest request, HttpServletResponse response) {
		try {
			return newsCenterService.getList(newsCenter);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(NewsCenter newsCenter, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			newsCenter.setNewsTime(DateUtils.parseDate(newsCenter.getNewsTimeStr(), CommonConstant.YYYY_MM_dd));
			return newsCenterService.saveOrUpdate(newsCenter, user);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return newsCenterService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return newsCenterService.deleteByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
