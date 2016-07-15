package com.tianhong.domain.recruit;

import java.util.Date;

public class ResumeWorkHistory {
    private Integer id;

    private Integer resumeId;

    private String position;

    private Date startDate;

    private Date endDate;

    private String address;

    private String industryType;

    private String oranazationType;

    private String reportObj;

    private Integer subordinateNum;

    private String payment;

    private Integer workDuty;

    private String achievementDesc;

    private Date createTime;

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