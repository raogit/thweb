package com.tianhong.enums;

import com.tianhong.constant.SymbolConstant;

/**
 * 技能等级：一般，良好，熟练，精通;General, good, skilled, proficient
 * @author sky
 *
 */
public enum AbleFlag {
	YES(1,"是"),
	NO(0,"否");
	
	private Integer key;
	private String text;
	
	private AbleFlag(Integer key,String text){
		this.key=key;
		this.text=text;
	}
	
	public Integer getKey() {
		return key;
	}
	
	public String getText() {
		return text;
	}

	public static String getValues() {
		String result="";
		AbleFlag[] jobs=AbleFlag.values();
		for(AbleFlag job : jobs){
			result+=job.getText()+job.getKey()+SymbolConstant.COMMA;
		}
		return result.substring(0, result.length()-1);
	}
}
