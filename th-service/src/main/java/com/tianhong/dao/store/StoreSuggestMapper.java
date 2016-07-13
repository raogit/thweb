package com.tianhong.dao.store;

import com.tianhong.domain.store.StoreSuggest;

public interface StoreSuggestMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(StoreSuggest record);

    int insertSelective(StoreSuggest record);

    StoreSuggest selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(StoreSuggest record);

    int updateByPrimaryKeyWithBLOBs(StoreSuggest record);

    int updateByPrimaryKey(StoreSuggest record);
}