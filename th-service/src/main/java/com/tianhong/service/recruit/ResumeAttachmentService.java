package com.tianhong.service.recruit;

import java.util.List;

import com.tianhong.domain.recruit.ResumeAttachment;

/**
 * 简历附件接口
 * @author sky
 *
 */
public interface ResumeAttachmentService {
	/**
	 * 根据简历查询技能
	 * @param resumeId
	 * @return
	 */
	public List<ResumeAttachment> selectByResumeId(Integer resumeId);
	/**
	 * 删除
	 * @param id
	 */
	public void delete(Integer id);
	/**
	 * 更新
	 * @param resumeAttachment
	 */
	public void update(ResumeAttachment resumeAttachment);
	/**
	 * 添加
	 * @param resumeAttachment
	 */
	public void insert(ResumeAttachment resumeAttachment);
}
