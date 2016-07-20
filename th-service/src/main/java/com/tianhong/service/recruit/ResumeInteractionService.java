package com.tianhong.service.recruit;

import java.util.List;

import com.tianhong.domain.recruit.RecruitInteraction;

/**
 * FAQ接口
 * @author sky
 *
 */
public interface ResumeInteractionService {
	/**
	 * 根据简历查询技能
	 * @param resumeId
	 * @return
	 */
	public List<RecruitInteraction> selectByFaqType(String faqType);
	/**
	 * 删除
	 * @param id
	 */
	public void delete(Integer id);
	/**
	 * 更新
	 * @param recruitInteraction
	 */
	public void update(RecruitInteraction recruitInteraction);
	/**
	 * 添加
	 * @param recruitInteraction
	 */
	public void insert(RecruitInteraction recruitInteraction);
}
