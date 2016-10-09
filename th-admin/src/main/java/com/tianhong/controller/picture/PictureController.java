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

import com.tianhong.constant.CommonConstant;
import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.picture.Picture;
import com.tianhong.domain.user.User;
import com.tianhong.service.picture.PictureService;
import com.tianhong.utils.FileToolUtils;

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

	@RequestMapping(value = "/left")
	@ResponseBody
	public Object left(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return pictureService.updateLeftOrRight(id, CommonConstant.LEFT);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/right")
	@ResponseBody
	public Object right(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return pictureService.updateLeftOrRight(id, CommonConstant.RIGHT);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			String path = FileToolUtils.getPathMkdir(request.getSession().getServletContext().getRealPath("/"),
					CommonConstant.UPLOAD_IMG_PATH);
			return pictureService.delete(id, path);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(Picture picture, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			return pictureService.save(picture, user);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(Picture picture, HttpServletRequest request, HttpServletResponse response) {
		try {
			return pictureService.getPage(picture);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(Picture picture, HttpServletRequest request, HttpServletResponse response) {
		try {
			return pictureService.getList(picture);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return pictureService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
