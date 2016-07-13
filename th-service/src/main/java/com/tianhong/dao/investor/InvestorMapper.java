package com.tianhong.dao.investor;

import com.tianhong.domain.investor.Investor;

public interface InvestorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Investor record);

    int insertSelective(Investor record);

    Investor selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Investor record);

    int updateByPrimaryKeyWithBLOBs(Investor record);

    int updateByPrimaryKey(Investor record);
}