package com.tianhong.dao.recruit;

import com.tianhong.domain.recruit.RecruitResume;

public interface RecruitResumeMapper {
    int deleteByPrimaryKey(Integer id);

	int insert(RecruitResume record);

	int insertSelective(RecruitResume record);

	RecruitResume selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(RecruitResume record);

	int updateByPrimaryKey(RecruitResume record);

	int deleteByPrimaryKey(Integer id);

    int insert(RecruitResume record);

    int insertSelective(RecruitResume record);

    RecruitResume selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RecruitResume record);

    int updateByPrimaryKey(RecruitResume record);
}