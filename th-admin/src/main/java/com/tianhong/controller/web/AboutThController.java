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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.controller.base.BaseController;

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
}
