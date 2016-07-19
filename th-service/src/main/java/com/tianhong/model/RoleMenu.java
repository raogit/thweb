/**  
 * @Title: SysRoleMenu.java
 * @Package com.tianhong.model
 * @Description: 描述
 * @author xing
 * @date 2016年7月19日 下午1:49:18
 */
package com.tianhong.model;

/**
 * ClassName: SysRoleMenu
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月19日 下午1:49:18
 */
public class RoleMenu {

	private int userId;
	private int roleId;
	private int menuId;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public int getMenuId() {
		return menuId;
	}

	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}

}
