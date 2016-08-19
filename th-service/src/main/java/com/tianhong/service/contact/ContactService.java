/**  
 * @Title: ContactService.java
 * @Package com.tianhong.service.contact
 * @Description: 描述
 * @author xing
 * @date 2016年8月18日 下午5:32:10
 */
package com.tianhong.service.contact;

import com.tianhong.domain.contact.Contact;

/**
 * ClassName: ContactService
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月18日 下午5:32:10
 */
public interface ContactService {
	Contact insertSelective(Contact contact) throws Exception;

	Contact getPage(Contact contact) throws Exception;

	boolean deleteByPrimaryKey(Integer id) throws Exception;
}
