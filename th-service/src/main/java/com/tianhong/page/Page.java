/**  
 * @Title: Page.java
 * @Package com.tianhong.page
 * @Description: 描述
 * @author xing
 * @date 2016年7月15日 下午5:12:32
 */
package com.tianhong.page;

/**
 * ClassName: Page
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月15日 下午5:12:32
 */
public class Page {

	private int curPage = 1; // 当前页
	private int pageSize = 10; // 每页多少行
	private int totalRow; // 共多少行
	private int start;// 当前页起始行
	private int totalPage; // 共多少页

	private Object obj;

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalRow() {
		return totalRow;
	}

	public void setTotalRow(int totalRow) {
		this.totalRow = totalRow;
	}

	public int getStart() {
		start = this.pageSize * (this.curPage - 1);
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getTotalPage() {
		int count = totalRow / pageSize;
		if (totalRow % pageSize == 0) {
			totalPage = count;
		} else {
			totalPage = count + 1;
		}
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}
}
