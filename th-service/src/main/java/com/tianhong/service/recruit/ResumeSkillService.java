package com.tianhong.service.recruit;

import java.util.List;

import com.tianhong.domain.recruit.ResumeSkill;

/**
 * 技能接口
 * @author sky
 *
 */
public interface ResumeSkillService {
	/**
	 * 根据简历查询技能
	 * @param resumeId
	 * @return
	 */
	public List<ResumeSkill> selectByResumeId(Integer resumeId);
	/**
	 * 删除
	 * @param id
	 */
	public void delete(Integer id);
	/**
	 * 更新
	 * @param resumeSkill
	 */
	public void update(ResumeSkill resumeSkill);
	/**
	 * 添加
	 * @param resumeSkill
	 */
	public void insert(ResumeSkill resumeSkill);
}
