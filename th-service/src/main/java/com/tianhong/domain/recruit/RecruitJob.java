package com.tianhong.domain.recruit;

import java.util.Date;
/**
 * 职位
 * @author Administrator
 *
 */
public class RecruitJob {
	/**
	 * 编号
	 */
    private Integer id;
    /**
     * 职位名称
     */
    private String jobName;
    /**
     * 职位编号
     */
    private Long jobNo;

    private String department;

    private String area;

    private String jobType;

    private String jobCategory;

    private Integer num;

    private Integer salaryMax;

    private Integer salaryMin;

    private Date publishDate;

    private String recuitType;

    private String jobDescption;

    private Integer requireAge;

    private Integer requireYears;

    private String requireEn;

    private String requireCn;

    private String requireYy;

    private String requireOther;

    private Date createTime;

    private Integer createUser;

    private Date updateTime;

    private Integer updateUser;

    private Integer isShow;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName == null ? null : jobName.trim();
    }

    public Long getJobNo() {
        return jobNo;
    }

    public void setJobNo(Long jobNo) {
        this.jobNo = jobNo;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department == null ? null : department.trim();
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area == null ? null : area.trim();
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType == null ? null : jobType.trim();
    }

    public String getJobCategory() {
        return jobCategory;
    }

    public void setJobCategory(String jobCategory) {
        this.jobCategory = jobCategory == null ? null : jobCategory.trim();
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getSalaryMax() {
        return salaryMax;
    }

    public void setSalaryMax(Integer salaryMax) {
        this.salaryMax = salaryMax;
    }

    public Integer getSalaryMin() {
        return salaryMin;
    }

    public void setSalaryMin(Integer salaryMin) {
        this.salaryMin = salaryMin;
    }

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public String getRecuitType() {
        return recuitType;
    }

    public void setRecuitType(String recuitType) {
        this.recuitType = recuitType == null ? null : recuitType.trim();
    }

    public String getJobDescption() {
        return jobDescption;
    }

    public void setJobDescption(String jobDescption) {
        this.jobDescption = jobDescption == null ? null : jobDescption.trim();
    }

    public Integer getRequireAge() {
        return requireAge;
    }

    public void setRequireAge(Integer requireAge) {
        this.requireAge = requireAge;
    }

    public Integer getRequireYears() {
        return requireYears;
    }

    public void setRequireYears(Integer requireYears) {
        this.requireYears = requireYears;
    }

    public String getRequireEn() {
        return requireEn;
    }

    public void setRequireEn(String requireEn) {
        this.requireEn = requireEn == null ? null : requireEn.trim();
    }

    public String getRequireCn() {
        return requireCn;
    }

    public void setRequireCn(String requireCn) {
        this.requireCn = requireCn == null ? null : requireCn.trim();
    }

    public String getRequireYy() {
        return requireYy;
    }

    public void setRequireYy(String requireYy) {
        this.requireYy = requireYy == null ? null : requireYy.trim();
    }

    public String getRequireOther() {
        return requireOther;
    }

    public void setRequireOther(String requireOther) {
        this.requireOther = requireOther == null ? null : requireOther.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getCreateUser() {
        return createUser;
    }

    public void setCreateUser(Integer createUser) {
        this.createUser = createUser;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(Integer updateUser) {
        this.updateUser = updateUser;
    }

    public Integer getIsShow() {
        return isShow;
    }

    public void setIsShow(Integer isShow) {
        this.isShow = isShow;
    }
}