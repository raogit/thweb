package com.tianhong.enums;

import com.tianhong.constant.SymbolConstant;

/**
 * 招聘类型
 * @author sky
 *
 */
public enum RecruitType {
	//社招，校招
	SCHOOL("校招"),
	SOCIAL("社招");
	
	private String text;
	
	private RecruitType(String text){
		this.text=text;
	}

	public String getText() {
		return text;
	}
	
	public static String getTexts() {
		String result="";
		JobType[] jobs=JobType.values();
		for(JobType job : jobs){
			result+=job.getText()+SymbolConstant.COMMA;
		}
		return result.substring(0, result.length()-1);
	}
}
