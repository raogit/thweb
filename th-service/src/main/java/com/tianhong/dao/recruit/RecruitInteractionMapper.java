package com.tianhong.dao.recruit;

import java.util.List;

import com.tianhong.domain.recruit.RecruitInteraction;

public interface RecruitInteractionMapper {
   
	int deleteByPrimaryKey(Integer id);

    int insert(RecruitInteraction record);

    int insertSelective(RecruitInteraction record);

    RecruitInteraction selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RecruitInteraction record);

    int updateByPrimaryKey(RecruitInteraction record);
    
    List<RecruitInteraction> selectByFaqType(String faqType);
}