package com.tianhong.dao.recruit;

import com.tianhong.domain.recruit.RecruitUser;

public interface RecruitUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RecruitUser record);

    int insertSelective(RecruitUser record);

    RecruitUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RecruitUser record);

    int updateByPrimaryKey(RecruitUser record);
}