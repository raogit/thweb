package com.tianhong.dao.recruit;

import java.util.List;

import com.tianhong.domain.recruit.RecruitQuestion;

public interface RecruitQuestionMapper {

	int deleteByPrimaryKey(Integer id);

    int insert(RecruitQuestion record);

    int insertSelective(RecruitQuestion record);

    RecruitQuestion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RecruitQuestion record);

    int updateByPrimaryKey(RecruitQuestion record);
    
    List<RecruitQuestion> getMore();
}