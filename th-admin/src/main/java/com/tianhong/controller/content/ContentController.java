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
	public Object investmentcoverSave(InveInfo inveInfo, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			User user = getCurrentUser(request);
			Content content = contentService.getByMenuId(inveInfo.getMenuId());
			if(content == null ){
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
			if(content!=null && StringUtils.isNotEmpty(content.getContent())){
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
}
