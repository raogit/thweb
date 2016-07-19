package com.tianhong.domain.recruit;

import java.util.Date;
/**
 * 附件
 * @author sky
 *
 */
public class ResumeAttachment {
    private Integer id;

    private Integer resumeId;

    private String filePath;

    private Date createTime;

    private Date updateTime;

    private String able;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getResumeId() {
        return resumeId;
    }

    public void setResumeId(Integer resumeId) {
        this.resumeId = resumeId;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath == null ? null : filePath.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getAble() {
        return able;
    }

    public void setAble(String able) {
        this.able = able == null ? null : able.trim();
    }
}