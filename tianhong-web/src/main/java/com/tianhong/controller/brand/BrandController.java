/**  
 * @Title: BrandController.java
 * @Package com.tianhong.controller.brand
 * @Description: 描述
 * @author xing
 * @date 2016年8月19日 下午2:40:27
 */
package com.tianhong.controller.brand;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.domain.content.Content;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.picture.Picture;
import com.tianhong.service.content.ContentService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.picture.PictureService;

/**
 * ClassName: BrandController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月19日 下午2:40:27
 */
@Controller
@RequestMapping(value = "/brand")
public class BrandController {
	private static final Log log = LogFactory.getLog(BrandController.class);

	@Autowired
	private MenuService menuService;

	@Autowired
	private PictureService pictureService;
	@Autowired
	private ContentService contentService;

	@RequestMapping(value = "/list")
	public Object subList(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			List<Menu> subMenusAll = menuService.getSubMenus(132, false);
			List<Menu> subMenus = menuService.getSubMenus(132, true);
			if (!CollectionUtils.isEmpty(subMenusAll)) {
				for (Menu menu : subMenusAll) {
					if (menu.getName().indexOf("首图") > -1) {
						List<Picture> pictures = pictureService.findByMenuId(menu.getId());
						model.put("pictures", pictures);
						break;
					}
				}

			}
			if (!CollectionUtils.isEmpty(subMenus)) {
				for (Menu menu : subMenus) {
					List<Picture> subPictures = pictureService.findByMenuId(menu.getId());
					Content content = contentService.getByMenuId(menu.getId());
					menu.getPictures().addAll(subPictures);
					menu.setContent(content);
				}
			}
			model.put("subMenus", subMenus);
			model.put("menuId", 132);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/brand/index", model);
	}
}
