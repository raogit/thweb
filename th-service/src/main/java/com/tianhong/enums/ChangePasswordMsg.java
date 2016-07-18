package com.tianhong.enums;
/**
 * 修改招聘用户密码提示
 * @author sky
 *
 */
public enum ChangePasswordMsg {
	PARAM_ERROR("参数不齐"),
	NOUSER("用户不存在"),
	OLDPWD_FAIL("原密码错误"),
	SUCCESS("密码修改成功");
	
	private String text;
	
	private ChangePasswordMsg(String text){
		this.text=text;
	}

	public String getText() {
		return text;
	}
}
