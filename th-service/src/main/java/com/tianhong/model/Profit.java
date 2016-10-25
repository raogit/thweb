/**  
 * @Title: profit.java
 * @Package com.tianhong.model
 * @Description: 描述
 * @author xing
 * @date 2016年10月25日 上午10:05:42
 */
package com.tianhong.model;

import java.util.Date;

/**
 * ClassName: profit
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年10月25日 上午10:05:42
 */
public class Profit {

	private Integer id;
	private Integer menuId;
	private String profitDate;// 分红年度
	private String profitPlan;// 分红方案
	private String cash;/// 现金分红金额（元）
	private String registerDate;// 股权登记日
	private String exDividendDate;// 除权除息日
	private String marketDate;// 红股上市日
	private String simpleProfit;// 归属于上市公司股东的净利润（元）
	private String simpleProfitRatio;// 占合并报表中归属于上市公司股东的净利润的比率
	private String shareTotal;// 总股本（股）
	private Date createTime;
	private String createTimeStr;

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

	public String getProfitDate() {
		return profitDate;
	}

	public void setProfitDate(String profitDate) {
		this.profitDate = profitDate;
	}

	public String getProfitPlan() {
		return profitPlan;
	}

	public void setProfitPlan(String profitPlan) {
		this.profitPlan = profitPlan;
	}

	public String getCash() {
		return cash;
	}

	public void setCash(String cash) {
		this.cash = cash;
	}

	public String getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}

	public String getExDividendDate() {
		return exDividendDate;
	}

	public void setExDividendDate(String exDividendDate) {
		this.exDividendDate = exDividendDate;
	}

	public String getMarketDate() {
		return marketDate;
	}

	public void setMarketDate(String marketDate) {
		this.marketDate = marketDate;
	}

	public String getSimpleProfit() {
		return simpleProfit;
	}

	public void setSimpleProfit(String simpleProfit) {
		this.simpleProfit = simpleProfit;
	}

	public String getSimpleProfitRatio() {
		return simpleProfitRatio;
	}

	public void setSimpleProfitRatio(String simpleProfitRatio) {
		this.simpleProfitRatio = simpleProfitRatio;
	}

	public String getShareTotal() {
		return shareTotal;
	}

	public void setShareTotal(String shareTotal) {
		this.shareTotal = shareTotal;
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
