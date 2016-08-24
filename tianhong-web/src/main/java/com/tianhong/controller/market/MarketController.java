/**
 * 
 */
package com.tianhong.controller.market;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/market")
public class MarketController {
	private static final Log log = LogFactory.getLog(MarketController.class);

	@RequestMapping(value = "/index")
	public Object index(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/market/default", model);
	}
}
