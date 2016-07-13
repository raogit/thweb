package com.tianhong.dao.culture;

import com.tianhong.domain.culture.Culture;

public interface CultureMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Culture record);

    int insertSelective(Culture record);

    Culture selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Culture record);

    int updateByPrimaryKeyWithBLOBs(Culture record);

    int updateByPrimaryKey(Culture record);
}