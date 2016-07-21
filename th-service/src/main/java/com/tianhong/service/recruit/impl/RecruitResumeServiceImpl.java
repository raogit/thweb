package com.tianhong.service.recruit.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.tianhong.dao.recruit.RecruitResumeMapper;
import com.tianhong.dao.recruit.ResumeAttachmentMapper;
import com.tianhong.dao.recruit.ResumeEducationHistoryMapper;
import com.tianhong.dao.recruit.ResumeLanguageMapper;
import com.tianhong.dao.recruit.ResumeSkillMapper;
import com.tianhong.dao.recruit.ResumeWorkHistoryMapper;
import com.tianhong.domain.recruit.RecruitResume;
import com.tianhong.domain.recruit.Resume;
import com.tianhong.service.recruit.RecruitResumeService;

public class RecruitResumeServiceImpl implements RecruitResumeService {

	@Autowired
	private ResumeAttachmentMapper resumeAttachmentMapper;
	@Autowired
	private ResumeEducationHistoryMapper resumeEducationHistoryMapper;
	@Autowired
	private ResumeLanguageMapper resumeLanguageMapper;
	@Autowired
	private ResumeSkillMapper resumeSkillMapper;
	@Autowired
	private ResumeWorkHistoryMapper resumeWorkHistoryMapper;
	@Autowired
	private RecruitResumeMapper recruitResumeMapper;
	
	public List<Resume> queryResumeByUserId(Integer userId) {
		List<Resume> result = new ArrayList<Resume>();
		List<RecruitResume> recruitResumeList=recruitResumeMapper.queryRecruitResumeByUserId(userId);
		for(RecruitResume recruitResume : recruitResumeList){
			Resume resume = new Resume();
			resume.setRecruitResume(recruitResume);
			resume.setResumeAttachmentList(resumeAttachmentMapper.selectByResumeId(recruitResume.getId()));
			resume.setResumeEducationHistoryList(resumeEducationHistoryMapper.selectByResumeId(recruitResume.getId()));
			resume.setResumeLanguageList(resumeLanguageMapper.selectByResumeId(recruitResume.getId()));
			resume.setResumeSkillList(resumeSkillMapper.selectByResumeId(recruitResume.getId()));
			resume.setResumeWorkHistory(resumeWorkHistoryMapper.selectByResumeId(recruitResume.getId()));
			result.add(resume);
		}
		return result;
	}

	public List<RecruitResume> queryRecruitResumeByUserId(Integer userId) {
		return recruitResumeMapper.queryRecruitResumeByUserId(userId);
	}

	public void create(RecruitResume recruitResume) {
		recruitResumeMapper.insert(recruitResume);
	}

	public void delete(Integer id) {
		recruitResumeMapper.deleteByPrimaryKey(id);
	}

	public void update(RecruitResume recruitResume) {
		recruitResumeMapper.updateByPrimaryKey(recruitResume);
	}

}
