package com.tianhong.dao.recruit;

import com.tianhong.domain.recruit.ResumeLanguage;

public interface ResumeLanguageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ResumeLanguage record);

    int insertSelective(ResumeLanguage record);

    ResumeLanguage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ResumeLanguage record);

    int updateByPrimaryKey(ResumeLanguage record);
}