package com.tianhong.dao.recruit;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.tianhong.domain.recruit.RecruitJob;

public interface RecruitJobMapper {

	int deleteByPrimaryKey(Integer id);

    int insert(RecruitJob record);

    int insertSelective(RecruitJob record);

    RecruitJob selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RecruitJob record);

    int updateByPrimaryKey(RecruitJob record);
    
    List<RecruitJob> searchJob(@Param("jobName") String jobName,@Param("area") String area,@Param("jobCategory") String jobCategory);
    
    List<RecruitJob> searchMoreJob();
    
    List<RecruitJob> searchLastJob(@Param("limit")int limit, @Param("recuitType")String recuitType);
}