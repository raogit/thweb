/**
 * 
 */
package com.tianhong.controller.web;

import java.util.ArrayList;
import java.util.Date;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.tianhong.constant.CommonConstant;
import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.content.Content;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.newscenter.NewsCenter;
import com.tianhong.domain.picture.Picture;
import com.tianhong.domain.user.User;
import com.tianhong.domain.web.DevelopHistory;
import com.tianhong.model.InvestmentCover;
import com.tianhong.model.InvestmentHotline;
import com.tianhong.service.content.ContentService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.newscenter.NewsCenterService;
import com.tianhong.service.picture.PictureService;
import com.tianhong.service.web.DevelopHistoryService;
import com.tianhong.utils.DateUtils;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/web/investment")
public class InvestmentController extends BaseController {

	private static final Log log = LogFactory.getLog(AboutThController.class);

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
	public Object index(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("parentMenu", menuService.getByPrimaryKey(menuId));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menuId, true);
			model.put("subMenus", subMenus);
			model.put("menu", subMenus.get(0));

			List<Menu> subs = menuService.getSubMenus(subMenus.get(0).getId(), false);
			if (!CollectionUtils.isEmpty(subs)) {
				for (Menu m : subs) {
					if (m.getName().indexOf("职能") > -1) {
						Content job = contentService.getByMenuId(m.getId());
						model.put("job", job);
						break;
					}
				}
				for (Menu m : subs) {
					if (m.getName().indexOf("招商信息") > -1) {
						List<Picture> infos = pictureService.findInvestmentByMenuId(m.getId());
						for (Picture pic : infos) {
							pic.setCreateTimeStr(DateUtils.parseString(pic.getCreateTime(), CommonConstant.YYYY_MM_dd));
						}
						List<List<Picture>> infoList = new ArrayList<List<Picture>>();
						if (infos.size() > 5) {
							for (int i = 0; i < infos.size(); i += 5) {
								List<Picture> list = new ArrayList<Picture>();
								int size = infos.size() - i <= 5 ? infos.size() - i : 5;
								for (int j = 0; j < size; j++) {
									list.add(infos.get(i + j));
								}
								infoList.add(list);
							}
						} else {
							infoList.add(infos);
						}

						model.put("infoList", infoList);
						break;
					}
				}
				for (Menu m : subs) {
					if (m.getName().indexOf("招商动态") > -1) {
						List<DevelopHistory> historys = developHistoryService.getInvestmentList(m.getId());
						List<List<DevelopHistory>> historyList = new ArrayList<List<DevelopHistory>>();
						if (historys.size() > 5) {
							for (int i = 0; i < historys.size(); i += 5) {
								List<DevelopHistory> list = new ArrayList<DevelopHistory>();
								int size = historys.size() - i <= 5 ? historys.size() - i : 5;
								for (int j = 0; j < size; j++) {
									list.add(historys.get(i + j));
								}
								historyList.add(list);
							}
						} else {
							historyList.add(historys);
						}
						model.put("historyList", historyList);
						break;
					}
				}
				for (Menu m : subs) {
					if (m.getName().indexOf("招商热线") > -1) {
						List<InvestmentHotline> list = new ArrayList<InvestmentHotline>();
						Content content = new Content();
						content.setMenuId(m.getId());
						List<Content> contents = contentService.list(content);
						for (Content c : contents) {
							InvestmentHotline hotline = JSONObject.parseObject(c.getContent(), InvestmentHotline.class);
							hotline.setCreateTime(c.getCreateTime());
							hotline.setCreateTimeStr(DateUtils.parseString(c.getCreateTime(), CommonConstant.YYYY_MM_dd_HH_mm_ss));
							hotline.setId(c.getId());
							list.add(hotline);
						}
						model.put("hotline", list);
						break;
					}
				}
				for (Menu m : subs) {
					if (m.getName().indexOf("供应商自荐") > -1) {
						model.put("coverMenu", m);
						break;
					}
				}
			}

			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/business/busine-index", model);
	}

	@RequestMapping(value = "/business")
	public Object business(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
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
					if (m.getName().indexOf("职能") > -1) {
						Content job = contentService.getByMenuId(m.getId());
						model.put("job", job);
						break;
					}
				}
				for (Menu m : subs) {
					if (m.getName().indexOf("招商信息") > -1) {
						List<Picture> infos = pictureService.findInvestmentByMenuId(m.getId());
						for (Picture pic : infos) {
							pic.setCreateTimeStr(DateUtils.parseString(pic.getCreateTime(), CommonConstant.YYYY_MM_dd));
						}
						List<List<Picture>> infoList = new ArrayList<List<Picture>>();
						if (infos.size() > 5) {
							for (int i = 0; i < infos.size(); i += 5) {
								List<Picture> list = new ArrayList<Picture>();
								int size = infos.size() - i <= 5 ? infos.size() - i : 5;
								for (int j = 0; j < size; j++) {
									list.add(infos.get(i + j));
								}
								infoList.add(list);
							}
						} else {
							infoList.add(infos);
						}

						model.put("infoList", infoList);
						break;
					}
				}
				for (Menu m : subs) {
					if (m.getName().indexOf("招商动态") > -1) {
						List<DevelopHistory> historys = developHistoryService.getInvestmentList(m.getId());
						List<List<DevelopHistory>> historyList = new ArrayList<List<DevelopHistory>>();
						if (historys.size() > 5) {
							for (int i = 0; i < historys.size(); i += 5) {
								List<DevelopHistory> list = new ArrayList<DevelopHistory>();
								int size = historys.size() - i <= 5 ? historys.size() - i : 5;
								for (int j = 0; j < size; j++) {
									list.add(historys.get(i + j));
								}
								historyList.add(list);
							}
						} else {
							historyList.add(historys);
						}
						model.put("historyList", historyList);
						break;
					}
				}
				for (Menu m : subs) {
					if (m.getName().indexOf("招商热线") > -1) {
						List<InvestmentHotline> list = new ArrayList<InvestmentHotline>();
						Content content = new Content();
						content.setMenuId(m.getId());
						List<Content> contents = contentService.list(content);
						for (Content c : contents) {
							InvestmentHotline hotline = JSONObject.parseObject(c.getContent(), InvestmentHotline.class);
							hotline.setCreateTime(c.getCreateTime());
							hotline.setCreateTimeStr(DateUtils.parseString(c.getCreateTime(), CommonConstant.YYYY_MM_dd_HH_mm_ss));
							hotline.setId(c.getId());
							list.add(hotline);
						}
						model.put("hotline", list);
						break;
					}
				}
				for (Menu m : subs) {
					if (m.getName().indexOf("供应商自荐") > -1) {
						model.put("coverMenu", m);
						break;
					}
				}
			}

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/business/busine-index", model);
	}

	@RequestMapping(value = "/businetrend")
	public Object busineTrend(@RequestParam("menuId") int menuId, @RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu me = menuService.getByPrimaryKey(menuId);
			Menu menu = menuService.getByPrimaryKey(me.getParentId());
			model.put("menu", menu);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);

			List<DevelopHistory> historys = developHistoryService.getList(menuId);
			model.put("historys", historys);
			DevelopHistory history = developHistoryService.getByPrimaryKey(id);
			model.put("history", history);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/business/busine-trend", model);
	}

	@RequestMapping(value = "/show")
	public Object show(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("menu", menu);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);

			NewsCenter newsCenter = new NewsCenter();
			newsCenter.setMenuId(menuId);
			newsCenter.setType("品牌展示");
			List<NewsCenter> brands = newsCenterService.getList(newsCenter);
			model.put("brands", brands);
			newsCenter.setType("项目展示");
			List<NewsCenter> projects = newsCenterService.getList(newsCenter);
			model.put("projects", projects);

		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/business/show", model);
	}

	@RequestMapping(value = "/showdetail1")
	public Object showDetail1(@RequestParam("menuId") int menuId, @RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("menu", menu);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);

			NewsCenter newsCenter = new NewsCenter();
			newsCenter.setMenuId(menuId);
			newsCenter.setType("品牌展示");
			List<NewsCenter> brands = newsCenterService.getList(newsCenter);
			model.put("brands", brands);
			newsCenter.setType("项目展示");
			List<NewsCenter> projects = newsCenterService.getList(newsCenter);
			model.put("projects", projects);

			NewsCenter detail = newsCenterService.getByPrimaryKey(id);
			model.put("detail", detail);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/business/show-detail", model);
	}

	@RequestMapping(value = "/showdetail2")
	public Object showDetail2(@RequestParam("menuId") int menuId, @RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("menu", menu);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);

			NewsCenter newsCenter = new NewsCenter();
			newsCenter.setMenuId(menuId);
			newsCenter.setType("品牌展示");
			List<NewsCenter> brands = newsCenterService.getList(newsCenter);
			model.put("brands", brands);
			newsCenter.setType("项目展示");
			List<NewsCenter> projects = newsCenterService.getList(newsCenter);
			model.put("projects", projects);

			NewsCenter detail = newsCenterService.getByPrimaryKey(id);
			model.put("detail", detail);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/business/show-detail2", model);
	}

	@RequestMapping(value = "/investmentcover/save")
	@ResponseBody
	public Object investmentcoverSave(InvestmentCover investmentCover, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			User user = getCurrentUser(request);
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
			String json = JSONObject.toJSONString(investmentCover);
			Content content = new Content();
			content.setId(investmentCover.getId());
			content.setMenuId(Integer.parseInt(menuId));
			content.setContent(json);
			content.setCreateTime(new Date());
			content.setCreateId(user.getId());
			return contentService.save(content);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
