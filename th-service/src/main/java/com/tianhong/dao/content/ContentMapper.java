package com.tianhong.dao.content;

import com.tianhong.domain.content.Content;

public interface ContentMapper {
    int insert(Content record);

    int insertSelective(Content record);
}