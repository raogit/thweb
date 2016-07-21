/**  
 * @Title: PictureController.java
 * @Package com.tianhong.controller.picture
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午10:43:51
 */
package com.tianhong.controller.picture;

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
import com.tianhong.service.picture.PictureService;

/**
 * ClassName: PictureController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午10:43:51
 */
@Controller
@RequestMapping(value = "/picture")
public class PictureController extends BaseController {

	private static final Log log = LogFactory.getLog(PictureController.class);

	@Autowired
	private PictureService pictureService;

	@RequestMapping(value = "/listbymenuid")
	@ResponseBody
	public Object listbymenuid(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			return pictureService.findByMenuId(menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
