package com.tianhong.service.recruit.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianhong.dao.recruit.ResumeWorkHistoryMapper;
import com.tianhong.domain.recruit.ResumeWorkHistory;
import com.tianhong.service.recruit.ResumeWorkHistoryService;
@Service
public class ResumeWorkHistoryServiceImpl implements ResumeWorkHistoryService {
	
	@Autowired
	private ResumeWorkHistoryMapper resumeWorkHistoryMapper;
	
	public List<ResumeWorkHistory> selectByResumeId(Integer resumeId) {
		return resumeWorkHistoryMapper.selectByResumeId(resumeId);
	}

	public void delete(Integer id) {
		resumeWorkHistoryMapper.deleteByPrimaryKey(id);
	}

	public void update(ResumeWorkHistory resumeSkill) {
		resumeWorkHistoryMapper.updateByPrimaryKey(resumeSkill);
	}

	public void insert(ResumeWorkHistory resumeSkill) {
		resumeWorkHistoryMapper.insert(resumeSkill);
	}

}
