
package com.tianhong.domain.recruit;

import java.util.List;

/**
 * 简历
 * @author Administrator
 *
 */
public class Resume {
	/**
	 * 简历基本信息
	 */
	private RecruitResume recruitResume;
	/**
	 * 简历附件
	 */
	private List<ResumeAttachment> resumeAttachmentList;
	/**
	 * 简历教育经历
	 */
	private List<ResumeEducationHistory> resumeEducationHistoryList;
	/**
	 * 简历语言
	 */
	private List<ResumeLanguage> resumeLanguageList;
	/**
	 * 简历技能
	 */
	private List<ResumeSkill> resumeSkillList;
	/**
	 * 简历工作经历
	 */
	private List<ResumeWorkHistory> resumeWorkHistory;
	public RecruitResume getRecruitResume() {
		return recruitResume;
	}
	public void setRecruitResume(RecruitResume recruitResume) {
		this.recruitResume = recruitResume;
	}
	public List<ResumeAttachment> getResumeAttachmentList() {
		return resumeAttachmentList;
	}
	public void setResumeAttachmentList(List<ResumeAttachment> resumeAttachmentList) {
		this.resumeAttachmentList = resumeAttachmentList;
	}
	public List<ResumeEducationHistory> getResumeEducationHistoryList() {
		return resumeEducationHistoryList;
	}
	public void setResumeEducationHistoryList(List<ResumeEducationHistory> resumeEducationHistoryList) {
		this.resumeEducationHistoryList = resumeEducationHistoryList;
	}
	public List<ResumeLanguage> getResumeLanguageList() {
		return resumeLanguageList;
	}
	public void setResumeLanguageList(List<ResumeLanguage> resumeLanguageList) {
		this.resumeLanguageList = resumeLanguageList;
	}
	public List<ResumeSkill> getResumeSkillList() {
		return resumeSkillList;
	}
	public void setResumeSkillList(List<ResumeSkill> resumeSkillList) {
		this.resumeSkillList = resumeSkillList;
	}
	public List<ResumeWorkHistory> getResumeWorkHistory() {
		return resumeWorkHistory;
	}
	public void setResumeWorkHistory(List<ResumeWorkHistory> resumeWorkHistory) {
		this.resumeWorkHistory = resumeWorkHistory;
	}
	
	
}
