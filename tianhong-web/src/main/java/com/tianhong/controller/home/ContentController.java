/**  
 * @Title: ContentController.java
 * @Package com.tianhong.controller.content
 * @Description: 描述
 * @author xing
 * @date 2016年8月17日 下午2:20:07
 */
package com.tianhong.controller.home;

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
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.content.Content;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.picture.Picture;
import com.tianhong.service.content.ContentService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.picture.PictureService;

/**
 * ClassName: ContentController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月17日 下午2:20:07
 */
@Controller
@RequestMapping(value = "/content")
public class ContentController extends BaseController {

	private static final Log log = LogFactory.getLog(ContentController.class);

	@Autowired
	private PictureService pictureService;
	@Autowired
	private ContentService contentService;
	@Autowired
	private MenuService menuService;

	@RequestMapping(value = "/get")
	public Object edit(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			List<Picture> pictures = pictureService.findByMenuId(menuId);
			Content content = contentService.getByMenuId(menuId);
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("content", content);
			model.put("menu", menu);
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/case/traffic", model);
	}
}
