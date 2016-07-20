package com.tianhong.service.recruit.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianhong.dao.recruit.RecruitInteractionMapper;
import com.tianhong.domain.recruit.RecruitInteraction;
import com.tianhong.service.recruit.ResumeInteractionService;
@Service
public class ResumeInteractionServiceImpl implements ResumeInteractionService {
	
	@Autowired
	private RecruitInteractionMapper recruitInteractionMapper;
	
	public List<RecruitInteraction> selectByFaqType(String faqType) {
		return recruitInteractionMapper.selectByFaqType(faqType);
	}

	public void delete(Integer id) {
		recruitInteractionMapper.deleteByPrimaryKey(id);
	}

	public void update(RecruitInteraction recruitInteraction) {
		recruitInteractionMapper.updateByPrimaryKey(recruitInteraction);
	}

	public void insert(RecruitInteraction recruitInteraction) {
		recruitInteractionMapper.insert(recruitInteraction);
	}

}
