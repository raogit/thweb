package com.tianhong.enums;

import com.tianhong.constant.SymbolConstant;

/**
 * 性别
 * @author sky
 *
 */
public enum Sex {
	male("女"),
	female("男");
	
	private String text;
	
	private Sex(String text){
		this.text=text;
	}

	public String getText() {
		return text;
	}
	
	public static String getTexts() {
		String result="";
		Sex[] jobs=Sex.values();
		for(Sex job : jobs){
			result+=job.getText()+SymbolConstant.COMMA;
		}
		return result.substring(0, result.length()-1);
	}
}
