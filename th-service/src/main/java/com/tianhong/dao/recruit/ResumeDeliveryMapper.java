package com.tianhong.dao.recruit;

import java.util.List;

import com.tianhong.domain.recruit.ResumeDelivery;

public interface ResumeDeliveryMapper {

	int deleteByPrimaryKey(Integer id);

    int insert(ResumeDelivery record);

    int insertSelective(ResumeDelivery record);

    ResumeDelivery selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ResumeDelivery record);

    int updateByPrimaryKey(ResumeDelivery record);
    
    List<ResumeDelivery> selectByStatus(String status);
}