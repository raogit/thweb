package com.tianhong.domain.recruit;

import java.util.Date;
/**
 * 招聘用户
 * @author Administrator
 *
 */
public class RecruitUser {
    private Integer id;
    /**
     * 用户名
     */
	private String username;
	/**
     * 密码
     */
	private String password;
	/**
     * 来源
     */
	private String source;
	/**
     * 是否可用
     * @AbleFlag
     */
	private Integer able;
	/**
     * 用户名
     */
	private Date createTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username == null ? null : username.trim();
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source == null ? null : source.trim();
	}

	public Integer getAble() {
		return able;
	}

	public void setAble(Integer able) {
		this.able = able;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

}