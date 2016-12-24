/**  
 * @Title: ContentController.java
 * @Package com.tianhong.controller.content
 * @Description: 描述
 * @author xing
 * @date 2016年8月17日 下午2:20:07
 */
package com.tianhong.controller.content;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.content.Content;
import com.tianhong.domain.user.User;
import com.tianhong.model.InveInfo;
import com.tianhong.model.Profit;
import com.tianhong.model.StaffInfo;
import com.tianhong.service.content.ContentService;

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
	private ContentService contentService;

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(Content content, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);

			if (content != null && content.getId() > 0) {
				content.setUpdateId(user.getId());
				content.setUpdateTime(new Date());
				contentService.updateByPrimaryKeySelective(content);
			} else {
				Content con = contentService.getByMenuId(content.getMenuId());
				if (con != null) {
					con.setTitle(content.getTitle());
					con.setSlogan(content.getSlogan());
					con.setPhone(content.getPhone());
					con.setAddress(content.getAddress());
					con.setContent(content.getContent());
					con.setBackup1(content.getBackup1());
					con.setUpdateId(user.getId());
					con.setUpdateTime(new Date());
					contentService.updateByPrimaryKeySelective(con);
				} else {
					content.setIsDeleted(false);
					content.setCreateId(user.getId());
					content.setCreateTime(new Date());
					contentService.insertSelective(content);
				}

			}
			return true;
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object edit(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		try {
			Content content = contentService.getByMenuId(menuId);
			return content;
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			contentService.deleteByPrimaryKey(id);
			return true;
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/inveinfo/save")
	@ResponseBody
	public Object investmentcoverSave(InveInfo inveInfo, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			Content content = contentService.getByMenuId(inveInfo.getMenuId());
			if (content == null) {
				content = new Content();
				content.setMenuId(inveInfo.getMenuId());
			}
			String json = JSONObject.toJSONString(inveInfo);
			content.setContent(json);
			content.setCreateTime(new Date());
			content.setCreateId(user.getId());
			contentService.save(content);
			return inveInfo;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/inveinfo/get")
	@ResponseBody
	public Object investmentcoverSave(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			map.put("menuId", menuId);
			Content content = contentService.getByMenuId(menuId);
			if (content != null && StringUtils.isNotEmpty(content.getContent())) {
				InveInfo inveInfo = JSONObject.parseObject(content.getContent(), InveInfo.class);
				inveInfo.setId(content.getId());
				return inveInfo;
			}
			return false;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/contact/save")
	@ResponseBody
	public Object contactSave(StaffInfo staffInfo, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			Content content = null;
			if (staffInfo.getId() != null && staffInfo.getId() > 0) {
				content = contentService.getByPrimaryKey(staffInfo.getId());
			}
			if (content == null) {
				content = new Content();
				content.setMenuId(staffInfo.getMenuId());
			}

			String json = JSONObject.toJSONString(staffInfo);
			content.setContent(json);
			content.setCreateTime(new Date());
			content.setCreateId(user.getId());
			contentService.save(content);
			return staffInfo;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/contact/get")
	@ResponseBody
	public Object contactGet(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {

			Content content = contentService.getByPrimaryKey(id);
			map.put("menuId", content.getMenuId());
			if (content != null && StringUtils.isNotEmpty(content.getContent())) {
				StaffInfo info = JSONObject.parseObject(content.getContent(), StaffInfo.class);
				info.setId(content.getId());
				return info;
			}
			return false;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(Content content, HttpServletRequest request, HttpServletResponse response) {
		try {
			Content con = contentService.page(content);
			return con;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(Content content, HttpServletRequest request, HttpServletResponse response) {
		try {
			List<Content> list = contentService.list(content);
			return list;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/profit/save")
	@ResponseBody
	public Object profitSave(Profit profit, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			Content content = null;
			if (profit.getId() != null && profit.getId() > 0) {
				content = contentService.getByPrimaryKey(profit.getId());
			}
			if (content == null) {
				content = new Content();
				content.setMenuId(profit.getMenuId());
			}

			String json = JSONObject.toJSONString(profit);
			content.setContent(json);
			content.setCreateTime(new Date());
			content.setCreateId(user.getId());
			contentService.save(content);
			return profit;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/profit/get")
	@ResponseBody
	public Object profitGet(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {

			Content content = contentService.getByPrimaryKey(id);
			map.put("menuId", content.getMenuId());
			if (content != null && StringUtils.isNotEmpty(content.getContent())) {
				Profit info = JSONObject.parseObject(content.getContent(), Profit.class);
				info.setId(content.getId());
				return info;
			}
			return false;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

}
