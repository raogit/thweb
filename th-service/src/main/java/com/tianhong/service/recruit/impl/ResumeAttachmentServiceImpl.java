package com.tianhong.service.recruit.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianhong.dao.recruit.ResumeAttachmentMapper;
import com.tianhong.domain.recruit.ResumeAttachment;
import com.tianhong.service.recruit.ResumeAttachmentService;
@Service
public class ResumeAttachmentServiceImpl implements ResumeAttachmentService {
	
	@Autowired
	private ResumeAttachmentMapper resumeAttachmentMapper;
	
	public List<ResumeAttachment> selectByResumeId(Integer resumeId) {
		return resumeAttachmentMapper.selectByResumeId(resumeId);
	}

	public void delete(Integer id) {
		resumeAttachmentMapper.deleteByPrimaryKey(id);
	}

	public void update(ResumeAttachment resumeAttachment) {
		resumeAttachmentMapper.updateByPrimaryKey(resumeAttachment);
	}

	public void insert(ResumeAttachment resumeAttachment) {
		resumeAttachmentMapper.insert(resumeAttachment);
	}

}
