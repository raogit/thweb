package com.tianhong.dao.contact;

import com.tianhong.domain.contact.Contact;

public interface ContactMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Contact record);

    int insertSelective(Contact record);

    Contact selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Contact record);

    int updateByPrimaryKeyWithBLOBs(Contact record);

    int updateByPrimaryKey(Contact record);
}