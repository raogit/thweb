/**  
 * @Title: ContactController.java
 * @Package com.tianhong.controller.contact
 * @Description: 描述
 * @author xing
 * @date 2016年8月19日 上午9:38:37
 */
package com.tianhong.controller.contact;

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

import com.tianhong.domain.contact.Contact;
import com.tianhong.service.contact.ContactService;

/**
 * ClassName: ContactController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月19日 上午9:38:37
 */
@Controller
@RequestMapping(value = "/contact")
public class ContactController {

	private static final Log log = LogFactory.getLog(ContactController.class);

	@Autowired
	private ContactService contactService;

	@RequestMapping(value = "/list")
	public Object list(HttpServletRequest request, HttpServletResponse response) {

		return "/contact/list";
	}

	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(Contact contact, HttpServletRequest request, HttpServletResponse response) {
		try {
			if (StringUtils.isNotEmpty(contact.getName())) {
				contact.setName(contact.getName().trim());
			}
			return contactService.getPage(contact);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
		try {
			return contactService.deleteByPrimaryKey(id);
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

}
