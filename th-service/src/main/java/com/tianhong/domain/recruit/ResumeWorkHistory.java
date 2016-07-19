package com.tianhong.domain.recruit;

import java.util.Date;
/**
 * 工作经历
 * @author sky
 *
 */
public class ResumeWorkHistory {
    private Integer id;
    /**
     * 简历编号
     */
    private Integer resumeId;
    /**
     * 工作职位
     */
    private String position;
    /**
     * 开始时间
     */
    private Date startDate;
    /**
     * 结束时间
     */
    private Date endDate;
    /**
     * 工作地点
     */
    private String address;
    /**
     * 所属行业：枚举
     */
    private String industryType;
    /**
     * 公司性质：枚举
     */
    private String oranazationType;
    /**
     * 汇报对象
     */
    private String reportObj;
    /**
     * 下属人数
     */
    private Integer subordinateNum;
    /**
     * 薪资
     */
    private String payment;
    /**
     * 工作职责
     */
    private Integer workDuty;
    /**
     * 业绩描述
     */
    private String achievementDesc;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 修改时间
     */
    private Date updateTime;

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

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position == null ? null : position.trim();
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getIndustryType() {
        return industryType;
    }

    public void setIndustryType(String industryType) {
        this.industryType = industryType == null ? null : industryType.trim();
    }

    public String getOranazationType() {
        return oranazationType;
    }

    public void setOranazationType(String oranazationType) {
        this.oranazationType = oranazationType == null ? null : oranazationType.trim();
    }

    public String getReportObj() {
        return reportObj;
    }

    public void setReportObj(String reportObj) {
        this.reportObj = reportObj == null ? null : reportObj.trim();
    }

    public Integer getSubordinateNum() {
        return subordinateNum;
    }

    public void setSubordinateNum(Integer subordinateNum) {
        this.subordinateNum = subordinateNum;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment == null ? null : payment.trim();
    }

    public Integer getWorkDuty() {
        return workDuty;
    }

    public void setWorkDuty(Integer workDuty) {
        this.workDuty = workDuty;
    }

    public String getAchievementDesc() {
        return achievementDesc;
    }

    public void setAchievementDesc(String achievementDesc) {
        this.achievementDesc = achievementDesc == null ? null : achievementDesc.trim();
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
}