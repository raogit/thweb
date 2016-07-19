package com.tianhong.domain.recruit;

import java.util.Date;
/**
 * 语言
 * @author sky
 *
 */
public class ResumeLanguage {
    private Integer id;
    /**
     * 简历编号
     */
    private Integer resumeId;
    /**
     * 语言：英语，俄语，德语，法语，西班牙语，意大利语，阿拉伯语，朝鲜语，日语
     * @LanguageType
     */
    private String language;
    /**
     * 级别：四级，六级，专业四级，专业八级
     * @ResumeSkill
     */
    private String level;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 更新时间
     */
    private Date updateTime;
    /**
     * 简历编号
     */
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