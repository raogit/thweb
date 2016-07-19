package com.tianhong.enums;

import com.tianhong.constant.SymbolConstant;

/**
 * 学历：高中及以下，大专，本科，硕士，博士，MBA
 * @author sky
 *
 */
public enum DegreesType {
	junior("高中及以下"),
	college("大专"),
	university("本科"),
	master("硕士"),
	doctor("博士"),
	MBA("MBA");
	
	private String text;
	
	private DegreesType(String text){
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
