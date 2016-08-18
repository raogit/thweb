/**  
 * @Title: ContactController.java
 * @Package com.tianhong.controller.home
 * @Description: 描述
 * @author xing
 * @date 2016年8月18日 下午4:53:17
 */
package com.tianhong.controller.home;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.domain.contact.Contact;
import com.tianhong.domain.picture.Picture;
import com.tianhong.service.contact.ContactService;
import com.tianhong.service.picture.PictureService;

/**
 * ClassName: ContactController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月18日 下午4:53:17
 */
@Controller
@RequestMapping(value = "/contact")
public class ContactController {

	private static final Log log = LogFactory.getLog(ContactController.class);
	@Autowired
	private PictureService pictureService;
	@Autowired
	private ContactService contactService;

	@RequestMapping(value = "/index")
	public Object index(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			List<Picture> pictures = pictureService.findByMenuId(menuId);
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/contact/index", model);
	}

	@RequestMapping(value = "/message")
	public Object message(@RequestParam("menuId") int menuId, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			List<Picture> pictures = pictureService.findByMenuId(menuId);
			model.put("pictures", pictures);
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/home/contact/message", model);
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Object index(Contact contact, HttpServletRequest request, HttpServletResponse response) {
		try {
			contact.setCreateTime(new Date());
			contactService.insertSelective(contact);
			return true;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}
}
