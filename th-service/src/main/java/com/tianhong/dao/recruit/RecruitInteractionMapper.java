package com.tianhong.dao.recruit;

import com.tianhong.domain.recruit.RecruitInteraction;

public interface RecruitInteractionMapper {
    int deleteByPrimaryKey(Integer id);

	int insert(RecruitInteraction record);

	int insertSelective(RecruitInteraction record);

	RecruitInteraction selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(RecruitInteraction record);

	int updateByPrimaryKey(RecruitInteraction record);

	int deleteByPrimaryKey(Integer id);

    int insert(RecruitInteraction record);

    int insertSelective(RecruitInteraction record);

    RecruitInteraction selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RecruitInteraction record);

    int updateByPrimaryKey(RecruitInteraction record);
}