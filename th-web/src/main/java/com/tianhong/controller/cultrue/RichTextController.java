/**  
 * @Title: CultureController.java
 * @Package com.tianhong.controller
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午10:41:48
 */
package com.tianhong.controller.cultrue;

import java.util.Date;

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
 * ClassName: CultureController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午10:41:48
 */
@Controller
@RequestMapping(value = "/rich")
public class RichTextController extends BaseController {

	private static final Log log = LogFactory.getLog(RichTextController.class);

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

	@RequestMapping(value = "/get")
	@ResponseBody
	public Object edit(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		try {
			Culture culture = cultureService.getByMenuId(menuId);
			return culture;
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}
}
