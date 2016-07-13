package com.tianhong.dao.newscenter;

import com.tianhong.domain.newscenter.NewsCenter;

public interface NewsCenterMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(NewsCenter record);

    int insertSelective(NewsCenter record);

    NewsCenter selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(NewsCenter record);

    int updateByPrimaryKeyWithBLOBs(NewsCenter record);

    int updateByPrimaryKey(NewsCenter record);
}