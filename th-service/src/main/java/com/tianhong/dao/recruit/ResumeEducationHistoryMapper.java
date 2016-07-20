package com.tianhong.dao.recruit;

import java.util.List;

import com.tianhong.domain.recruit.ResumeEducationHistory;

public interface ResumeEducationHistoryMapper {
    int deleteByPrimaryKey(Integer id);

	int insert(ResumeEducationHistory record);

	int insertSelective(ResumeEducationHistory record);

	ResumeEducationHistory selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(ResumeEducationHistory record);

	int updateByPrimaryKey(ResumeEducationHistory record);

	int deleteByPrimaryKey(Integer id);

    int insert(ResumeEducationHistory record);

    int insertSelective(ResumeEducationHistory record);

    ResumeEducationHistory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ResumeEducationHistory record);

    int updateByPrimaryKey(ResumeEducationHistory record);
    
    List<ResumeEducationHistory> selectByResumeId(Integer resumeId);
}