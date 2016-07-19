package com.tianhong.service.recruit;

import java.util.List;

import com.tianhong.domain.recruit.ResumeEducationHistory;

/**
 * 技能接口
 * @author sky
 *
 */
public interface ResumeEducationHistoryService {
	/**
	 * 根据简历查询技能
	 * @param resumeId
	 * @return
	 */
	public List<ResumeEducationHistory> selectByResumeId(Integer resumeId);
	/**
	 * 删除
	 * @param id
	 */
	public void delete(Integer id);
	/**
	 * 更新
	 * @param resumeEducationHistory
	 */
	public void update(ResumeEducationHistory resumeEducationHistory);
	/**
	 * 添加
	 * @param resumeEducationHistory
	 */
	public void insert(ResumeEducationHistory resumeEducationHistory);
}
