package com.tianhong.domain.recruit;

import java.util.Date;

public class ResumeLanguage {
    private Integer id;

    private Integer resumeId;

    private String language;

    private String level;

    private Date createTime;

    private Date updateTime;

    private String tanLevel;

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

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language == null ? null : language.trim();
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level == null ? null : level.trim();
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

    public String getTanLevel() {
        return tanLevel;
    }

    public void setTanLevel(String tanLevel) {
        this.tanLevel = tanLevel == null ? null : tanLevel.trim();
    }
}