/**
 * 
 */
package com.tianhong.controller.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.content.Content;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.picture.Picture;
import com.tianhong.model.InveInfo;
import com.tianhong.model.StaffInfo;
import com.tianhong.service.content.ContentService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.picture.PictureService;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/web/investor")
public class InvestorController extends BaseController {

	private static final Log log = LogFactory.getLog(InvestorController.class);

	@Autowired
	private MenuService menuService;
	@Autowired
	private ContentService contentService;
	@Autowired
	private PictureService pictureService;
	// @Autowired
	// private NewsCenterService newsCenterService;

	/**
	 * 入口
	 * 
	 * @param menuId
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/index")
	public Object index(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("parentMenu", menuService.getByPrimaryKey(menuId));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menuId, true);
			model.put("subMenus", subMenus);
			model.put("menu", subMenus.get(0));
			Content content = contentService.getByMenuId(181);
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investor/inveIndex", model);
	}

	/**
	 * 入口
	 * 
	 * @param menuId
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/quotation")
	public Object quotation(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);
			model.put("menu", subMenus.get(0));
			Content content = contentService.getByMenuId(181);
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investor/inveIndex", model);
	}

	/**
	 * 入口
	 * 
	 * @param menuId
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/basedata")
	public Object baseData(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("menu", menu);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);
			
			Content content = contentService.getByMenuId(menuId);
			if (content != null && StringUtils.isNotEmpty(content.getContent())) {
				InveInfo inveInfo = JSONObject.parseObject(content.getContent(), InveInfo.class);
				inveInfo.setId(content.getId());
				model.put("inveInfo", inveInfo);
			}

			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investor/inveInfo", model);
	}

	/**
	 * 公司治理
	 * 
	 * @param menuId
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/companyManage")
	public Object companyManage(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("parentMenu", menuService.getByPrimaryKey(menuId));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menuId, true);
			model.put("subMenus", subMenus);
			// model.put("menu", subMenus.get(0));
			// Content content = contentService.getByMenuId(181);
			// model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investor/companyManage", model);
	}

	/**
	 * 股东回报
	 * 
	 * @param menuId
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/profit")
	public Object profit(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("parentMenu", menuService.getByPrimaryKey(menuId));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menuId, true);
			model.put("subMenus", subMenus);
			model.put("menu", subMenus.get(0));
			Content content = contentService.getByMenuId(181);
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investor/profit", model);
	}

	/**
	 * 宣传与保护
	 * 
	 * @param menuId
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/protect")
	public Object protect(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("parentMenu", menuService.getByPrimaryKey(menuId));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menuId, true);
			model.put("subMenus", subMenus);
			model.put("menu", subMenus.get(0));
			Content content = contentService.getByMenuId(181);
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investor/protect", model);
	}
	
	
	@RequestMapping(value = "/communication")
	public Object communication(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("menu", menu);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);
			
			
			List<Menu> subs = menuService.getSubMenus(menu.getId(), false);
			for(Menu m : subs){
				if(m.getName().indexOf("联系方式")>-1){
					Content content = new Content();
					content.setMenuId(m.getId());
					List<Content> list = contentService.list(content);
					if(!CollectionUtils.isEmpty(list)){
						List<StaffInfo> infos = new ArrayList<StaffInfo>();
						for(Content con : list){
							if (StringUtils.isNotEmpty(con.getContent())) {
								StaffInfo info = JSONObject.parseObject(con.getContent(), StaffInfo.class);
								info.setId(content.getId());
								infos.add(info);
							}
						}
						model.put("infos", infos);
					}
					break;
				}
			}
			for(Menu m : subs){
				if(m.getName().indexOf("图片")>-1){
					List<Picture> pictures = pictureService.findByMenuId(m.getId());
					model.put("picture", pictures.get(0));
					break;
				}
			}
			

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investor/contact", model);
	}
}
