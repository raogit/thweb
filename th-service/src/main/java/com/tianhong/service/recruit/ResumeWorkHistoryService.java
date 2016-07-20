package com.tianhong.service.recruit;

import java.util.List;

import com.tianhong.domain.recruit.ResumeWorkHistory;

/**
 * 工作经历接口
 * @author sky
 *
 */
public interface ResumeWorkHistoryService {
	/**
	 * 根据简历查询技能
	 * @param resumeId
	 * @return
	 */
	public List<ResumeWorkHistory> selectByResumeId(Integer resumeId);
	/**
	 * 删除
	 * @param id
	 */
	public void delete(Integer id);
	/**
	 * 更新
	 * @param resumeWorkHistory
	 */
	public void update(ResumeWorkHistory resumeWorkHistory);
	/**
	 * 添加
	 * @param resumeWorkHistory
	 */
	public void insert(ResumeWorkHistory resumeWorkHistory);
}
