/**  
 * @Title: PictureController.java
 * @Package com.tianhong.controller.picture
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午10:43:51
 */
package com.tianhong.controller.picture;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.constant.CommonConstant;
import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.picture.Picture;
import com.tianhong.service.menu.MenuService;
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
	@Autowired
	private MenuService menuService;

	@RequestMapping(value = "/get")
	public Object edit(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			List<Menu> headMenus = menuService.getSubMenus(13);
			List<Picture> pictures = pictureService.findByMenuId(menuId);
			Menu menu = menuService.getByPrimaryKey(menuId);

			model.put("headMenus", headMenus);
			model.put("pictures", pictures);
			model.put("menu", menu);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/case/picture", model);
	}

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
			return pictureService.delete(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
