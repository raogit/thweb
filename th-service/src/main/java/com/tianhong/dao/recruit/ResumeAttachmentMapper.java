package com.tianhong.dao.recruit;

import com.tianhong.domain.recruit.ResumeAttachment;

public interface ResumeAttachmentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ResumeAttachment record);

    int insertSelective(ResumeAttachment record);

    ResumeAttachment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ResumeAttachment record);

    int updateByPrimaryKey(ResumeAttachment record);
    
    
}