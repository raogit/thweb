package com.tianhong.domain.recruit;

import java.util.Date;
/**
 * 简历基本信息
 * @author sky
 *
 */
public class RecruitResume {
	private Integer id;
    /**
     * 用户编号
     */
    private Integer userId;
    /**
     * 名称
     */
    private String name;
    /**
     * 性别：男，女
     * @Sex
     */
    private String sex;
    /**
     * 生日
     */
    private Date birthDate;
    /**
     * 手机号码
     */
    private Integer phone;
    /**
     * 邮箱地址
     */
    private String email;
    /**
     * 毕业学校
     */
    private String school;
    /**
     * 专业
     */
    private String major;
    /**
     * 毕业日期
     */
    private Date graduateDate;
    /**
     * 工作单位
     */
    private String oranazation;
    /**
     * 工作年限
     */
    private Integer workYears;
    /**
     * 现居住地
     */
    private String currentPalace;
    /**
     * 学历
     */
    private String degrees;
    /**
     * 备用手机号码
     */
    private Integer sparePhone;
    /**
     * 民族
     */
    private String nation;
    /**
     * 身份证
     */
    private String idCard;
    /**
     * 身份证地址
     */
    private String idCardAdd;
    /**
     * 背景描述
     */
    private String background;
    /**
     * 求职意向
     */
    private String intention;
    /**
     * 工作描述
     */
    private String workDescption;
    /**
     * 工作经历
     */
    private String projectHistory;
    /**
     * 培训经历
     */
    private String trainHistory;
    /**
     * 语言描述
     */
    private String languageDesc;
    /**
     * 奖励
     */
    private String reward;
    /**
     * 其他信息
     */
    private String ohterInfo;
    /**
     * 证书
     */
    private String certificate;
    /**
     * 个人爱好
     */
    private String personalLike;
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

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public Integer getPhone() {
        return phone;
    }

    public void setPhone(Integer phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }

    public Date getGraduateDate() {
        return graduateDate;
    }

    public void setGraduateDate(Date graduateDate) {
        this.graduateDate = graduateDate;
    }

    public String getOranazation() {
        return oranazation;
    }

    public void setOranazation(String oranazation) {
        this.oranazation = oranazation == null ? null : oranazation.trim();
    }

    public Integer getWorkYears() {
        return workYears;
    }

    public void setWorkYears(Integer workYears) {
        this.workYears = workYears;
    }

    public String getCurrentPalace() {
        return currentPalace;
    }

    public void setCurrentPalace(String currentPalace) {
        this.currentPalace = currentPalace == null ? null : currentPalace.trim();
    }

    public String getDegrees() {
        return degrees;
    }

    public void setDegrees(String degrees) {
        this.degrees = degrees == null ? null : degrees.trim();
    }

    public Integer getSparePhone() {
        return sparePhone;
    }

    public void setSparePhone(Integer sparePhone) {
        this.sparePhone = sparePhone;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation == null ? null : nation.trim();
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard == null ? null : idCard.trim();
    }

    public String getIdCardAdd() {
        return idCardAdd;
    }

    public void setIdCardAdd(String idCardAdd) {
        this.idCardAdd = idCardAdd == null ? null : idCardAdd.trim();
    }

    public String getBackground() {
        return background;
    }

    public void setBackground(String background) {
        this.background = background == null ? null : background.trim();
    }

    public String getIntention() {
        return intention;
    }

    public void setIntention(String intention) {
        this.intention = intention == null ? null : intention.trim();
    }

    public String getWorkDescption() {
        return workDescption;
    }

    public void setWorkDescption(String workDescption) {
        this.workDescption = workDescption == null ? null : workDescption.trim();
    }

    public String getProjectHistory() {
        return projectHistory;
    }

    public void setProjectHistory(String projectHistory) {
        this.projectHistory = projectHistory == null ? null : projectHistory.trim();
    }

    public String getTrainHistory() {
        return trainHistory;
    }

    public void setTrainHistory(String trainHistory) {
        this.trainHistory = trainHistory == null ? null : trainHistory.trim();
    }

    public String getLanguageDesc() {
        return languageDesc;
    }

    public void setLanguageDesc(String languageDesc) {
        this.languageDesc = languageDesc == null ? null : languageDesc.trim();
    }

    public String getReward() {
        return reward;
    }

    public void setReward(String reward) {
        this.reward = reward == null ? null : reward.trim();
    }

    public String getOhterInfo() {
        return ohterInfo;
    }

    public void setOhterInfo(String ohterInfo) {
        this.ohterInfo = ohterInfo == null ? null : ohterInfo.trim();
    }

    public String getCertificate() {
        return certificate;
    }

    public void setCertificate(String certificate) {
        this.certificate = certificate == null ? null : certificate.trim();
    }

    public String getPersonalLike() {
        return personalLike;
    }

    public void setPersonalLike(String personalLike) {
        this.personalLike = personalLike == null ? null : personalLike.trim();
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