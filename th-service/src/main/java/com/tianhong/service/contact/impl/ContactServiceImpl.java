/**  
 * @Title: ContactServiceImpl.java
 * @Package com.tianhong.service.contact.impl
 * @Description: 描述
 * @author xing
 * @date 2016年8月18日 下午5:33:56
 */
package com.tianhong.service.contact.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.contact.ContactMapper;
import com.tianhong.domain.contact.Contact;
import com.tianhong.service.contact.ContactService;

/**
 * ClassName: ContactServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月18日 下午5:33:56
 */
@Service("contactService")
@Transactional
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactMapper contactMapper;

	public Contact insertSelective(Contact contact) throws Exception {
		contactMapper.insertSelective(contact);
		return contact;
	}

	public Contact getPage(Contact contact) throws Exception {
		List<Contact> list = contactMapper.findPage(contact);
		int count = contactMapper.getCount(contact);
		contact.setObj(list);
		contact.setTotalRow(count);
		return contact;
	}

	public boolean deleteByPrimaryKey(Integer id) throws Exception {
		contactMapper.deleteByPrimaryKey(id);
		return true;
	}

}
