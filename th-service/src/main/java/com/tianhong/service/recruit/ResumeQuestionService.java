package com.tianhong.service.recruit;

import java.util.List;

import com.tianhong.domain.recruit.RecruitQuestion;

/**
 * 问题接口
 * @author sky
 *
 */
public interface ResumeQuestionService {
	/**
	 * 根据简历查询技能
	 * @param resumeId
	 * @return
	 */
	public List<RecruitQuestion> getMore();
	/**
	 * 删除
	 * @param id
	 */
	public void delete(Integer id);
	/**
	 * 更新
	 * @param recruitQuestion
	 */
	public void update(RecruitQuestion recruitQuestion);
	/**
	 * 添加
	 * @param recruitQuestion
	 */
	public void insert(RecruitQuestion recruitQuestion);
}
