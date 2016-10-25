/**  
 * @Title: CultureController.java
 * @Package com.tianhong.controller.web
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午2:28:14
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
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.controller.base.BaseController;

/**
 * ClassName: CultureController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午2:28:14
 */
@Controller
@RequestMapping(value = "/web/companymanager")
public class CompanyManagerController extends BaseController {

	private static final Log log = LogFactory.getLog(CompanyManagerController.class);

	@RequestMapping(value = "/seniorexecutive")
	public Object seniorExecutive(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/senior-executive", map);
	}

	@RequestMapping(value = "/system")
	public Object system(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/company-system", map);
	}

}
