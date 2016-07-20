package com.tianhong.dao.recruit;

import java.util.List;

import com.tianhong.domain.recruit.ResumeWorkHistory;

public interface ResumeWorkHistoryMapper {
    int deleteByPrimaryKey(Integer id);

	int insert(ResumeWorkHistory record);

	int insertSelective(ResumeWorkHistory record);

	ResumeWorkHistory selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(ResumeWorkHistory record);

	int updateByPrimaryKey(ResumeWorkHistory record);

	int deleteByPrimaryKey(Integer id);

	int insert(ResumeWorkHistory record);

	int insertSelective(ResumeWorkHistory record);

	ResumeWorkHistory selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(ResumeWorkHistory record);

	int updateByPrimaryKey(ResumeWorkHistory record);

	int deleteByPrimaryKey(Integer id);

    int insert(ResumeWorkHistory record);

    int insertSelective(ResumeWorkHistory record);

    ResumeWorkHistory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ResumeWorkHistory record);

    int updateByPrimaryKey(ResumeWorkHistory record);
    
    List<ResumeWorkHistory> selectByResumeId(Integer resumeId);
}