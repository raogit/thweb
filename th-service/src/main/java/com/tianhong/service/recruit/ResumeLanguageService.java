package com.tianhong.service.recruit;

import java.util.List;

import com.tianhong.domain.recruit.ResumeLanguage;

/**
 * 语言接口
 * @author sky
 *
 */
public interface ResumeLanguageService {
	/**
	 * 根据简历查询技能
	 * @param resumeId
	 * @return
	 */
	public List<ResumeLanguage> selectByResumeId(Integer resumeId);
	/**
	 * 删除
	 * @param id
	 */
	public void delete(Integer id);
	/**
	 * 更新
	 * @param resumeLanguage
	 */
	public void update(ResumeLanguage resumeLanguage);
	/**
	 * 添加
	 * @param resumeLanguage
	 */
	public void insert(ResumeLanguage resumeLanguage);
}
