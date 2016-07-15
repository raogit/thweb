package com.tianhong.dao.recruit;

import com.tianhong.domain.recruit.ResumeWorkHistory;

public interface ResumeWorkHistoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ResumeWorkHistory record);

    int insertSelective(ResumeWorkHistory record);

    ResumeWorkHistory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ResumeWorkHistory record);

    int updateByPrimaryKey(ResumeWorkHistory record);
}