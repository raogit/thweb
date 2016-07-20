package com.tianhong.dao.recruit;

import org.apache.ibatis.annotations.Param;

import com.tianhong.domain.recruit.RecruitUser;

public interface RecruitUserMapper {
    int deleteByPrimaryKey(Integer id);

	int insert(RecruitUser record);

	int insertSelective(RecruitUser record);

	RecruitUser selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(RecruitUser record);

	int updateByPrimaryKey(RecruitUser record);

	int deleteByPrimaryKey(Integer id);

    int insert(RecruitUser record);

    int insertSelective(RecruitUser record);

    RecruitUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RecruitUser record);

    int updateByPrimaryKey(RecruitUser record);
    
    int selectUser(@Param("userName") String userName, @Param("password") String password);
}