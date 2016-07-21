package com.tianhong.enums;

import com.tianhong.constant.SymbolConstant;

/**
 * 简历类型
 * @author sky
 *
 */
public enum ResumeType {
	EN("英文"),
	CN("汉字");
	
	private String text;
	
	private ResumeType(String text){
		this.text=text;
	}

	public String getText() {
		return text;
	}
	
	public static String getTexts() {
		String result="";
		ResumeType[] jobs=ResumeType.values();
		for(ResumeType job : jobs){
			result+=job.getText()+SymbolConstant.COMMA;
		}
		return result.substring(0, result.length()-1);
	}
}
