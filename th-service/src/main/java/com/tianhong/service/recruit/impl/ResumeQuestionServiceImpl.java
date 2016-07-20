package com.tianhong.service.recruit.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianhong.dao.recruit.RecruitQuestionMapper;
import com.tianhong.domain.recruit.RecruitQuestion;
import com.tianhong.service.recruit.ResumeQuestionService;
@Service
public class ResumeQuestionServiceImpl implements ResumeQuestionService {
	
	@Autowired
	private RecruitQuestionMapper recruitQuestionMapper;
	
	public List<RecruitQuestion> getMore() {
		return recruitQuestionMapper.getMore();
	}

	public void delete(Integer id) {
		recruitQuestionMapper.deleteByPrimaryKey(id);
	}

	public void update(RecruitQuestion recruitQuestion) {
		recruitQuestionMapper.updateByPrimaryKey(recruitQuestion);
	}

	public void insert(RecruitQuestion recruitQuestion) {
		recruitQuestionMapper.insert(recruitQuestion);
	}

}
