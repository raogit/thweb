package com.tianhong.domain.recruit;

import java.util.Date;
/**
 * 问题
 * @author sky
 *
 */
public class RecruitQuestion {
    private Integer id;
    /**
     * 问题
     */
	private String question;
	/**
     * 姓名
     */
	private String name;
	/**
     * 邮箱地址
     */
	private String email;
	/**
     * 手机号码
     */
	private String phone;
	/**
     * 工作单位
     */
	private String orgrazation;
	/**
     * 问题详细
     */
	private String detail;
	/**
     * 创建时间
     */
	private Date createTime;
	/**
     * 状态
     * @Status
     */
	private String status;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question == null ? null : question.trim();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email == null ? null : email.trim();
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone == null ? null : phone.trim();
	}

	public String getOrgrazation() {
		return orgrazation;
	}

	public void setOrgrazation(String orgrazation) {
		this.orgrazation = orgrazation == null ? null : orgrazation.trim();
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail == null ? null : detail.trim();
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status == null ? null : status.trim();
	}

	
}