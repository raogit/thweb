/**  
 * @Title: InvestmentHotline.java
 * @Package com.tianhong.model
 * @Description: 描述
 * @author xing
 * @date 2016年10月11日 上午10:23:13
 */
package com.tianhong.model;

import java.util.Date;

import com.tianhong.page.Page;

/**
 * ClassName: InvestmentHotline
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年10月11日 上午10:23:13
 */
public class InvestmentHotline extends Page {

	private int id;
	private int menuId;
	private String name;
	private String phone;
	private String email;
	private String department;
	private Date createTime;
	private String createTimeStr;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMenuId() {
		return menuId;
	}

	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getCreateTimeStr() {
		return createTimeStr;
	}

	public void setCreateTimeStr(String createTimeStr) {
		this.createTimeStr = createTimeStr;
	}

}
