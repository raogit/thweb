package com.tianhong.dao.recruit;

import java.util.List;

import com.tianhong.domain.recruit.ResumeSkill;

public interface ResumeSkillMapper {
    int deleteByPrimaryKey(Integer id);

	int insert(ResumeSkill record);

	int insertSelective(ResumeSkill record);

	ResumeSkill selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(ResumeSkill record);

	int updateByPrimaryKey(ResumeSkill record);

	int deleteByPrimaryKey(Integer id);

    int insert(ResumeSkill record);

    int insertSelective(ResumeSkill record);

    ResumeSkill selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ResumeSkill record);

    int updateByPrimaryKey(ResumeSkill record);
    
    List<ResumeSkill> selectByResumeId(Integer resumeId);
}