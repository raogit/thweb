/**  
 * @Title: NewsCenterController.java
 * @Package com.tianhong.controller.web
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午2:39:38
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
import com.tianhong.domain.newscenter.NewsCenter;
import com.tianhong.domain.user.User;
import com.tianhong.model.InvestmentCover;
import com.tianhong.model.InvestmentHotline;
import com.tianhong.service.content.ContentService;
import com.tianhong.service.newscenter.NewsCenterService;
import com.tianhong.utils.DateUtils;

/**
 * ClassName: NewsCenterController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午2:39:38
 */
@Controller
@RequestMapping(value = "/web/investment")
public class InvestmentController extends BaseController {

	private static final Log log = LogFactory.getLog(InvestmentController.class);

	@Autowired
	private NewsCenterService newsCenterService;
	@Autowired
	private ContentService contentService;

	@RequestMapping(value = "/index")
	public Object info(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investment-display", map);
	}

	@RequestMapping(value = "/center")
	public Object center(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investment-center", map);
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(NewsCenter newsCenter, HttpServletRequest request, HttpServletResponse response) {
		try {
			return newsCenterService.getPage(newsCenter);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(NewsCenter newsCenter, HttpServletRequest request, HttpServletResponse response) {
		try {
			return newsCenterService.getList(newsCenter);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(NewsCenter newsCenter, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			newsCenter.setNewsTime(DateUtils.parseDate(newsCenter.getNewsTimeStr(), CommonConstant.YYYY_MM_dd));
			return newsCenterService.saveOrUpdate(newsCenter, user);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return newsCenterService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return newsCenterService.deleteByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/investmentinfo")
	public Object investmentInfo(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investment-info", map);
	}

	@RequestMapping(value = "/investmenthotline/index")
	public Object investmentHotlineIndex(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investment-hotline", map);
	}

	@RequestMapping(value = "/investmenthotline/save")
	@ResponseBody
	public Object investmentHotlineSave(InvestmentHotline investmentHotline, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			User user = getCurrentUser(request);
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
			String json = JSONObject.toJSONString(investmentHotline);
			Content content = new Content();
			content.setId(investmentHotline.getId());
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

	@RequestMapping(value = "/investmenthotline/get")
	@ResponseBody
	public Object investmentHotlineGet(@RequestParam("id") int id, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);

			Content content = contentService.getByPrimaryKey(id);
			InvestmentHotline investmentHotline = JSONObject.parseObject(content.getContent(), InvestmentHotline.class);
			investmentHotline.setId(content.getId());
			return investmentHotline;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/investmenthotline/list")
	@ResponseBody
	public Object investmentHotlineGet(InvestmentHotline investmentHotline, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
			Content content = new Content();
			content.setMenuId(Integer.parseInt(menuId));
			List<Content> contents = contentService.list(content);
			List<InvestmentHotline> list = new ArrayList<InvestmentHotline>();
			if (!CollectionUtils.isEmpty(contents)) {
				for (Content c : contents) {
					InvestmentHotline hotline = JSONObject.parseObject(c.getContent(), InvestmentHotline.class);
					hotline.setCreateTime(c.getCreateTime());
					hotline.setCreateTimeStr(
							DateUtils.parseString(c.getCreateTime(), CommonConstant.YYYY_MM_dd_HH_mm_ss));
					hotline.setId(c.getId());
					list.add(hotline);
				}
			}
			investmentHotline.setObj(list);
			return investmentHotline;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/investmentcover/index")
	public Object investmentCoverIndex(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/investment-cover", map);
	}

	@RequestMapping(value = "/investmentcover/save")
	@ResponseBody
	public Object investmentcoverSave(InvestmentCover investmentCover, HttpServletRequest request,
			HttpServletResponse response) {
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

	@RequestMapping(value = "/investmentcover/get")
	@ResponseBody
	public Object investmentcoverGet(@RequestParam("id") int id, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);

			Content content = contentService.getByPrimaryKey(id);
			InvestmentCover investmentCover = JSONObject.parseObject(content.getContent(), InvestmentCover.class);
			investmentCover.setId(content.getId());
			return investmentCover;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/investmentcover/list")
	@ResponseBody
	public Object investmentcoverGet(InvestmentCover investmentCover, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String menuId = request.getParameter("menuId");
			map.put("menuId", menuId);
			Content content = new Content();
			content.setMenuId(Integer.parseInt(menuId));
			List<Content> contents = contentService.list(content);
			List<InvestmentCover> list = new ArrayList<InvestmentCover>();
			if (!CollectionUtils.isEmpty(contents)) {
				for (Content c : contents) {
					InvestmentCover cover = JSONObject.parseObject(c.getContent(), InvestmentCover.class);
					cover.setCreateTime(c.getCreateTime());
					cover.setCreateTimeStr(
							DateUtils.parseString(c.getCreateTime(), CommonConstant.YYYY_MM_dd_HH_mm_ss));
					cover.setId(c.getId());
					list.add(cover);
				}
			}
			investmentCover.setObj(list);
			return investmentCover;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
