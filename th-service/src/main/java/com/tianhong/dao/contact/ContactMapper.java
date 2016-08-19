package com.tianhong.dao.contact;

import java.util.List;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.contact.Contact;

public interface ContactMapper extends BaseMapper<Contact> {

	int updateByPrimaryKeyWithBLOBs(Contact record);

	List<Contact> findPage(Contact contact) throws Exception;

	int getCount(Contact contact) throws Exception;
}