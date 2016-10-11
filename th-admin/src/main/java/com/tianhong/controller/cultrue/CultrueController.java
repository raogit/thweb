/**  
 * @Title: CultrueController.java
 * @Package com.tianhong.controller.cultrue
 * @Description: 描述
 * @author xing
 * @date 2016年7月22日 上午11:39:19
 */
package com.tianhong.controller.cultrue;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.content.Content;
import com.tianhong.domain.user.User;
import com.tianhong.service.content.ContentService;

/**
 * ClassName: CultrueController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月22日 上午11:39:19
 */
@Controller
@RequestMapping(value = "/cultrue")
public class CultrueController extends BaseController {
	private static final Log log = LogFactory.getLog(CultrueController.class);

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
				content.setIsDeleted(false);
				content.setCreateId(user.getId());
				content.setCreateTime(new Date());
				contentService.insertSelective(content);
			}
			return true;
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(Content content, HttpServletRequest request, HttpServletResponse response) {
		try {
			if (StringUtils.isNotEmpty(content.getTitle())) {
				content.setTitle(content.getTitle().trim());
			}
			if (StringUtils.isNotEmpty(content.getSource())) {
				content.setSource(content.getSource().trim());
			}
			List<Content> list = contentService.findPage(content);
			int count = contentService.getCount(content);
			content.setObj(list);
			content.setTotalRow(count);
		} catch (Exception e) {
			log.error("", e);
		}
		return content;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			// User user = getCurrentUser(request);
			return contentService.deleteByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return contentService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}
}
