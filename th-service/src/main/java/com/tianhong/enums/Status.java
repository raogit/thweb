package com.tianhong.enums;

import com.tianhong.constant.SymbolConstant;

/**
 * 处理状态
 * @author sky
 *
 */
public enum Status {
	dealed("已处理"),
	not_deal("未处理"),
	not_use("废弃");
	
	private String text;
	
	private Status(String text){
		this.text=text;
	}

	public String getText() {
		return text;
	}
	
	public static String getTexts() {
		String result="";
		Status[] jobs=Status.values();
		for(Status job : jobs){
			result+=job.getText()+SymbolConstant.COMMA;
		}
		return result.substring(0, result.length()-1);
	}
}
