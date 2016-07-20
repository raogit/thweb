package com.tianhong.domain.recruit;

import java.util.Date;
/**
 * 简历投递
 * @author Administrator
 *
 */
public class ResumeDelivery {
    private Integer id;
    /**
     * 简历编号
     */
	private Integer resumeId;
	/**
     * 工作编号
     */
	private Integer jobId;
	/**
     * 投递时间
     */
	private Date deliveryTime;
	/**
     * 状态
     * @Status
     */
	private String status;
	/**
     * 职位名称
     */
	private String jobName;
	/**
     * 部门
     */
	private String deparment;
	/**
     * 地区
     */
	private String area;
	/**
     * 创建时间
     */
	private Date createTime;

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

	public Integer getJobId() {
		return jobId;
	}

	public void setJobId(Integer jobId) {
		this.jobId = jobId;
	}

	public Date getDeliveryTime() {
		return deliveryTime;
	}

	public void setDeliveryTime(Date deliveryTime) {
		this.deliveryTime = deliveryTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status == null ? null : status.trim();
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName == null ? null : jobName.trim();
	}

	public String getDeparment() {
		return deparment;
	}

	public void setDeparment(String deparment) {
		this.deparment = deparment == null ? null : deparment.trim();
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area == null ? null : area.trim();
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

}