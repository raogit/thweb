package com.tianhong.dao.store;

import com.tianhong.domain.store.StoreNews;
import com.tianhong.domain.store.StoreNewsWithBLOBs;

public interface StoreNewsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(StoreNewsWithBLOBs record);

    int insertSelective(StoreNewsWithBLOBs record);

    StoreNewsWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(StoreNewsWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(StoreNewsWithBLOBs record);

    int updateByPrimaryKey(StoreNews record);
}