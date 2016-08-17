/**
 * 
 */
package com.tianhong.controller.home.index;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.controller.menu.MenuController;
import com.tianhong.domain.picture.Picture;
import com.tianhong.service.picture.PictureService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/home")
public class HomeController {

	private static final Log log = LogFactory.getLog(MenuController.class);

	@Autowired
	private PictureService pictureService;

	@RequestMapping(value = "/index")
	public Object index(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			List<Picture> pictures = pictureService.findByMenuId(106);
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/index", model);
	}

	@RequestMapping(value = "/case/index")
	public Object caseIndex(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/case/index", model);
	}

	@RequestMapping(value = "/project/index")
	public Object projectIndex(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/project/index", model);
	}

	@RequestMapping(value = "/item/index")
	public Object itemIndex(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/item/index", model);
	}

	@RequestMapping(value = "/contact/index")
	public Object contactIndex(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/contact/index", model);
	}
}
