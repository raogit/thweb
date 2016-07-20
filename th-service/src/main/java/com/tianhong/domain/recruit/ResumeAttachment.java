package com.tianhong.domain.recruit;

import java.util.Date;
/**
 * 附件
 * @author sky
 *
 */
public class ResumeAttachment {
    private Integer id;
    /**
     * 简历编号
     */
	private Integer resumeId;
	/**
     * 附件路径
     */
	private String filePath;
	/**
     * 创建时间
     */
	private Date createTime;
	/**
     * 更新时间
     */
	private Date updateTime;
	/**
     * 是否可用
     * @AbleFlag
     */
	private String able;
	/**
     * 文件名
     */
	private String fileName;

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

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName == null ? null : fileName.trim();
	}

}