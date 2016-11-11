/**  
 * @Title: CultureController.java
 * @Package com.tianhong.controller.web
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午2:28:14
 */
package com.tianhong.controller.web;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.tianhong.constant.CommonConstant;
import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.content.Content;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.picture.Picture;
import com.tianhong.domain.web.DevelopHistory;
import com.tianhong.model.Profit;
import com.tianhong.service.content.ContentService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.newscenter.NewsCenterService;
import com.tianhong.service.picture.PictureService;
import com.tianhong.service.web.DevelopHistoryService;
import com.tianhong.utils.DateUtils;

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

	@Autowired
	private MenuService menuService;
	@Autowired
	private ContentService contentService;
	@Autowired
	private PictureService pictureService;
	@Autowired
	private NewsCenterService newsCenterService;
	@Autowired
	private DevelopHistoryService developHistoryService;

	@RequestMapping(value = "/index")
	public Object seniorExecutive(@RequestParam("menuId") int menuId, HttpServletRequest request,
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

			List<Menu> subs = menuService.getSubMenus(menuId, false);
			if (!CollectionUtils.isEmpty(subs)) {
				for (Menu m : subs) {
					if (m.getName().indexOf("组织架构") > -1) {
						List<Picture> pictures = pictureService.findByMenuId(m.getId());
						model.put("pictures", pictures);
						break;
					}
				}

				for (Menu m : subs) {
					if (m.getName().indexOf("公司高管") > -1) {
						List<Menu> ms = menuService.getSubMenus(m.getId(), false);
						for (Menu mu : ms) {
							if (mu.getName().indexOf("董事") > -1) {
								List<DevelopHistory> directors = developHistoryService.getList(mu.getId());
								model.put("directors", directors);
								break;
							}
						}
						for (Menu mu : ms) {
							if (mu.getName().indexOf("监事") > -1) {
								List<DevelopHistory> supervisors = developHistoryService.getList(mu.getId());
								model.put("supervisors", supervisors);
								break;
							}
						}
						for (Menu mu : ms) {
							if (mu.getName().indexOf("董事2") > -1) {
								List<DevelopHistory> director2s = developHistoryService.getList(mu.getId());
								model.put("director2s", director2s);
								break;
							}
						}
						break;
					}
				}
				for (Menu m : subs) {
					if (m.getName().indexOf("公司制度") > -1) {
						List<Picture> systems = pictureService.findByMenuId(m.getId());
						model.put("systems", systems);
						break;
					}
				}
				for (Menu m : subs) {
					if (m.getName().indexOf("公司章程") > -1) {
						List<Picture> constitutions = pictureService.findByMenuId(m.getId());
						model.put("constitutions", constitutions);
						break;
					}
				}
			}
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investor/company-manage", model);
	}

	@RequestMapping(value = "/profit")
	public Object profit(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("menu", menu);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);

			List<Menu> subs = menuService.getSubMenus(menuId, false);
			if (!CollectionUtils.isEmpty(subs)) {
				for (Menu m : subs) {
					if (m.getName().indexOf("利润分配") > -1) {
						Content content = new Content();
						content.setMenuId(m.getId());
						List<Content> contents = contentService.list(content);
						List<Profit> list = new ArrayList<Profit>();
						for (Content c : contents) {
							Profit profit = JSONObject.parseObject(c.getContent(), Profit.class);
							profit.setCreateTime(c.getCreateTime());
							profit.setCreateTimeStr(
									DateUtils.parseString(c.getCreateTime(), CommonConstant.YYYY_MM_dd_HH_mm_ss));
							profit.setId(c.getId());
							list.add(profit);
						}
						model.put("profits", list);
						break;
					}
				}

				for (Menu m : subs) {
					if (m.getName().indexOf("分红动态") > -1) {
						List<DevelopHistory> bonus = developHistoryService.getList(m.getId());
						model.put("bonus", bonus);
						break;
					}
				}
			}
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investor/profit", model);
	}

	@RequestMapping(value = "/protect")
	public Object protect(@RequestParam("menuId") int menuId, HttpServletRequest request,
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

			List<Menu> subs = menuService.getSubMenus(menuId, false);
			if (!CollectionUtils.isEmpty(subs)) {
				for (Menu m : subs) {
					if (m.getName().indexOf("热点关注") > -1) {
						List<DevelopHistory> hots = developHistoryService.getList(m.getId());
						model.put("hots", hots);
						break;
					}
				}

				for (Menu m : subs) {
					if (m.getName().indexOf("法律法规") > -1) {
						List<DevelopHistory> laws = developHistoryService.getList(m.getId());
						List<List<DevelopHistory>> infoList = new ArrayList<List<DevelopHistory>>();
						if (laws.size() > 5) {
							for (int i = 0; i < laws.size(); i += 5) {
								List<DevelopHistory> list = new ArrayList<DevelopHistory>();
								int size = laws.size() - i <= 5 ? laws.size() - i : 5;
								for (int j = 0; j < size; j++) {
									list.add(laws.get(i + j));
								}
								infoList.add(list);
							}
						} else {
							infoList.add(laws);
						}
						model.put("laws", infoList);
						break;
					}
				}
				for (Menu m : subs) {
					if (m.getName().indexOf("公益教育") > -1) {
						List<DevelopHistory> educations = developHistoryService.getList(m.getId());
						List<List<DevelopHistory>> infoList = new ArrayList<List<DevelopHistory>>();
						if (educations.size() > 5) {
							for (int i = 0; i < educations.size(); i += 5) {
								List<DevelopHistory> list = new ArrayList<DevelopHistory>();
								int size = educations.size() - i <= 5 ? educations.size() - i : 5;
								for (int j = 0; j < size; j++) {
									list.add(educations.get(i + j));
								}
								infoList.add(list);
							}
						} else {
							infoList.add(educations);
						}
						model.put("educations", infoList);
						break;
					}
				}
			}
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investor/protect", model);
	}
}
