package com.tianhong.service.recruit.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianhong.dao.recruit.ResumeEducationHistoryMapper;
import com.tianhong.domain.recruit.ResumeEducationHistory;
import com.tianhong.service.recruit.ResumeEducationHistoryService;
@Service
public class ResumeEducationHistoryServiceImpl implements ResumeEducationHistoryService {
	
	@Autowired
	private ResumeEducationHistoryMapper resumeEducationHistoryMapper;
	
	public List<ResumeEducationHistory> selectByResumeId(Integer resumeId) {
		return resumeEducationHistoryMapper.selectByResumeId(resumeId);
	}

	public void delete(Integer id) {
		resumeEducationHistoryMapper.deleteByPrimaryKey(id);
	}

	public void update(ResumeEducationHistory resumeEducationHistory) {
		resumeEducationHistoryMapper.updateByPrimaryKey(resumeEducationHistory);
	}

	public void insert(ResumeEducationHistory resumeEducationHistory) {
		resumeEducationHistoryMapper.insert(resumeEducationHistory);
	}

}
