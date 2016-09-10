package com.tianhong.domain.category;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.tianhong.domain.store.NewProduct;
import com.tianhong.domain.store.PreBuy;
import com.tianhong.domain.store.StoreProduct;
import com.tianhong.page.Page;

public class Category extends Page {
	private Integer id;

	private Integer menuId;

	private String menuName;

	private String name;

	private String enName;

	private Date createTime;

	private Integer createId;

	private Date updateTime;

	private Integer updateId;

	private Boolean isDeleted;

	private String backup1;

	private String backup2;

	private String backup3;

	private List<StoreProduct> storeProducts;

	private List<NewProduct> newProducts;

	private List<PreBuy> preBuys;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getMenuId() {
		return menuId;
	}

	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName == null ? null : menuName.trim();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getEnName() {
		return enName;
	}

	public void setEnName(String enName) {
		this.enName = enName == null ? null : enName.trim();
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getCreateId() {
		return createId;
	}

	public void setCreateId(Integer createId) {
		this.createId = createId;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getUpdateId() {
		return updateId;
	}

	public void setUpdateId(Integer updateId) {
		this.updateId = updateId;
	}

	public Boolean getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(Boolean isDeleted) {
		this.isDeleted = isDeleted;
	}

	public String getBackup1() {
		return backup1;
	}

	public void setBackup1(String backup1) {
		this.backup1 = backup1 == null ? null : backup1.trim();
	}

	public String getBackup2() {
		return backup2;
	}

	public void setBackup2(String backup2) {
		this.backup2 = backup2 == null ? null : backup2.trim();
	}

	public String getBackup3() {
		return backup3;
	}

	public void setBackup3(String backup3) {
		this.backup3 = backup3 == null ? null : backup3.trim();
	}

	public List<StoreProduct> getStoreProducts() {
		if (storeProducts == null) {
			storeProducts = new ArrayList<StoreProduct>();
		}
		return storeProducts;
	}

	public void setStoreProducts(List<StoreProduct> storeProducts) {
		this.storeProducts = storeProducts;
	}

	public List<NewProduct> getNewProducts() {
		if (newProducts == null) {
			newProducts = new ArrayList<NewProduct>();
		}
		return newProducts;
	}

	public void setNewProducts(List<NewProduct> newProducts) {
		this.newProducts = newProducts;
	}

	public List<PreBuy> getPreBuys() {
		if (preBuys == null) {
			preBuys = new ArrayList<PreBuy>();
		}
		return preBuys;
	}

	public void setPreBuys(List<PreBuy> preBuys) {
		this.preBuys = preBuys;
	}

}