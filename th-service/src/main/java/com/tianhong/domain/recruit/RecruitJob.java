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
    /**
     * 部门
     */
    private String department;
    /**
     * 工作地点
     */
    private String area;
    /**
     * 招聘对象:全职，兼职，实习
     */
    private String jobType;
    /**
     * 岗位类别
     */
    private String jobCategory;
    /**
     * 招聘人数
     */
    private Integer num;
    /**
     * 最高薪资
     */
    private Integer salaryMax;
    /**
     * 最低薪资
     */
    private Integer salaryMin;
    /**
     * 发布日期
     */
    private Date publishDate;
    /**
     * 招聘类型:社招，校招
     */
    private String recuitType;
    /**
     * 职位描述
     */
    private String jobDescption;
    /**
     * 年龄
     */
    private Integer requireAge;
    /**
     * 工作年限
     */
    private Integer requireYears;
    /**
     * 英语等级
     */
    private String requireEn;
    /**
     * 汉语
     */
    private String requireCn;
    /**
     * 粤语
     */
    private String requireYy;
    /**
     * 其他要求
     */
    private String requireOther;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 创建人
     */
    private Integer createUser;
    /**
     * 更新时间
     */
    private Date updateTime;
    /**
     * 更新人
     */
    private Integer updateUser;
    /**
     * 是否发布
     */
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