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

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.culture.Culture;
import com.tianhong.domain.user.User;
import com.tianhong.service.culture.CultureService;

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
	private CultureService cultureService;

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object save(Culture culture, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			if (culture != null && culture.getId() > 0) {
				culture.setUpdateId(user.getId());
				culture.setUpdateTime(new Date());
				cultureService.updateByPrimaryKeySelective(culture);
			} else {
				culture.setIsDeleted(false);
				culture.setCreateId(user.getId());
				culture.setCreateTime(new Date());
				cultureService.insertSelective(culture);
			}
			return true;
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(Culture culture, HttpServletRequest request, HttpServletResponse response) {
		try {
			culture.setTitle(culture.getTitle().trim());
			culture.setSource(culture.getSource().trim());
			List<Culture> list = cultureService.findPage(culture);
			int count = cultureService.getCount(culture);
			culture.setObj(list);
			culture.setTotalRow(count);
		} catch (Exception e) {
			log.error("", e);
		}
		return culture;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = getCurrentUser(request);
			return cultureService.deleteByPrimaryKey(id, user);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object get(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return cultureService.getByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}
}
