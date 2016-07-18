package com.tianhong.service.recruit.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.tianhong.dao.recruit.RecruitJobMapper;
import com.tianhong.domain.recruit.RecruitJob;
import com.tianhong.service.recruit.RecruitJobService;
/**
 * 
 * @author sky
 *
 */
public class RecruitJobServiceImpl implements RecruitJobService {
	
	@Autowired
	private RecruitJobMapper recruitJobMapper;

	public List<RecruitJob> searchJob(String jobName, String area, String jobCategory) {
		return recruitJobMapper.searchJob(jobName, area, jobCategory);
	}

	public List<RecruitJob> searchMoreJob() {
		return recruitJobMapper.searchMoreJob();
	}

	public List<RecruitJob> searchLastJob(int limit, String recuitType) {
		return recruitJobMapper.searchLastJob(limit, recuitType);
	}

	public void insert(RecruitJob recruitJob) {
		recruitJobMapper.insert(recruitJob);
	}

	public void update(RecruitJob recruitJob) {
		recruitJobMapper.updateByPrimaryKey(recruitJob);
	}

	public void delete(RecruitJob recruitJob) {
		if(recruitJob==null) return;
		recruitJobMapper.deleteByPrimaryKey(recruitJob.getId());
	}

}
