package com.tianhong.dao.recruit;

import com.tianhong.domain.recruit.RecruitJob;

public interface RecruitJobMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RecruitJob record);

    int insertSelective(RecruitJob record);

    RecruitJob selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RecruitJob record);

    int updateByPrimaryKey(RecruitJob record);
}