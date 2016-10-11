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
public class InvestmentCover extends Page {

	private int id;
	private int menuId;
	private String carrier;
	private String legal;
	private String address;
	private String establishTime;
	private String money;
	private String contactName;
	private String job;
	private String phone;
	private String email;
	private String buz;
	private String achievement;

	private Date createTime;
	private String createTimeStr;

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

	public String getCarrier() {
		return carrier;
	}

	public void setCarrier(String carrier) {
		this.carrier = carrier;
	}

	public String getLegal() {
		return legal;
	}

	public void setLegal(String legal) {
		this.legal = legal;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEstablishTime() {
		return establishTime;
	}

	public void setEstablishTime(String establishTime) {
		this.establishTime = establishTime;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getContactName() {
		return contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
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

	public String getBuz() {
		return buz;
	}

	public void setBuz(String buz) {
		this.buz = buz;
	}

	public String getAchievement() {
		return achievement;
	}

	public void setAchievement(String achievement) {
		this.achievement = achievement;
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
