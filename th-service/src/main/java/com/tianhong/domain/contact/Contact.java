package com.tianhong.domain.contact;

import java.util.Date;

import com.tianhong.page.Page;

public class Contact extends Page {
	private Integer id;

	private String name;

	private String email;

	private String phone;

	private String company;

	private String address;

	private Date createTime;

	private String backUp1;

	private String backUp2;

	private String message;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company == null ? null : company.trim();
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address == null ? null : address.trim();
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getBackUp1() {
		return backUp1;
	}

	public void setBackUp1(String backUp1) {
		this.backUp1 = backUp1 == null ? null : backUp1.trim();
	}

	public String getBackUp2() {
		return backUp2;
	}

	public void setBackUp2(String backUp2) {
		this.backUp2 = backUp2 == null ? null : backUp2.trim();
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message == null ? null : message.trim();
	}
}