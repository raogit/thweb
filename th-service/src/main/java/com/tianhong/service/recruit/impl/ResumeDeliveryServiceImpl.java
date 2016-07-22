package com.tianhong.service.recruit.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.tianhong.dao.recruit.ResumeDeliveryMapper;
import com.tianhong.domain.recruit.ResumeDelivery;
import com.tianhong.service.recruit.ResumeDeliveryService;

public class ResumeDeliveryServiceImpl implements ResumeDeliveryService {
	
	@Autowired
	private ResumeDeliveryMapper resumeDeliveryMapper;
	
	@Override
	public List<ResumeDelivery> selectByStatus(String status) {
		return resumeDeliveryMapper.selectByStatus(status);
	}

	@Override
	public void delete(Integer id) {
		resumeDeliveryMapper.deleteByPrimaryKey(id);

	}

	@Override
	public void update(ResumeDelivery resumeDelivery) {
		resumeDeliveryMapper.updateByPrimaryKey(resumeDelivery);

	}

	@Override
	public void insert(ResumeDelivery resumeDelivery) {
		resumeDeliveryMapper.insert(resumeDelivery);

	}

}
