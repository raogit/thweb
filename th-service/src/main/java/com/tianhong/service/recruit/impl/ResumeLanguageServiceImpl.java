package com.tianhong.service.recruit.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianhong.dao.recruit.ResumeLanguageMapper;
import com.tianhong.domain.recruit.ResumeLanguage;
import com.tianhong.service.recruit.ResumeLanguageService;
@Service
public class ResumeLanguageServiceImpl implements ResumeLanguageService {
	
	@Autowired
	private ResumeLanguageMapper resumeLanguageMapper;
	
	public List<ResumeLanguage> selectByResumeId(Integer resumeId) {
		return resumeLanguageMapper.selectByResumeId(resumeId);
	}

	public void delete(Integer id) {
		resumeLanguageMapper.deleteByPrimaryKey(id);
	}

	public void update(ResumeLanguage resumeLanguage) {
		resumeLanguageMapper.updateByPrimaryKey(resumeLanguage);
	}

	public void insert(ResumeLanguage resumeLanguage) {
		resumeLanguageMapper.insert(resumeLanguage);
	}

}
