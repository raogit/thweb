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
import org.springframework.web.bind.annotation.RequestParam;
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
@RequestMapping(value = "/web/video")
public class VideoController extends BaseController {

	private static final Log log = LogFactory.getLog(VideoController.class);

	@RequestMapping(value = "/load")
	public Object index(@RequestParam("fileName") String fileName, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			// "${basePath}/web/culture/edetails?fileName=${fileName }"
			String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
			model.put("fileName", basePath + "/download/pdf?fileName=" + fileName);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web2/culture/video-play", model);
	}

}
