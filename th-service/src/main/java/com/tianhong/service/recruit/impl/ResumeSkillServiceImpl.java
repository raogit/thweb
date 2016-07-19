package com.tianhong.service.recruit.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianhong.dao.recruit.ResumeSkillMapper;
import com.tianhong.domain.recruit.ResumeSkill;
import com.tianhong.service.recruit.ResumeSkillService;
@Service
public class ResumeSkillServiceImpl implements ResumeSkillService {
	
	@Autowired
	private ResumeSkillMapper resumeSkillMapper;
	
	public List<ResumeSkill> selectByResumeId(Integer resumeId) {
		return resumeSkillMapper.selectByResumeId(resumeId);
	}

	public void delete(Integer id) {
		resumeSkillMapper.deleteByPrimaryKey(id);
	}

	public void update(ResumeSkill resumeSkill) {
		resumeSkillMapper.updateByPrimaryKey(resumeSkill);
	}

	public void insert(ResumeSkill resumeSkill) {
		resumeSkillMapper.insert(resumeSkill);
	}

}
