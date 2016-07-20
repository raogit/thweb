package com.tianhong.enums;

import com.tianhong.constant.SymbolConstant;

/**
 * 语言：英语，俄语，德语，法语，西班牙语，意大利语，阿拉伯语，朝鲜语，日语
 * @author sky
 *
 */
public enum LanguageType {
	english("英语"),
	russian("俄语"),
	german("德语"),
	frech("法语"),
	spanish("西班牙"),
	italy("意大利"),
	arabic("阿拉伯语"),
	korea("朝鲜"),
	japaness("日语");
	
	private String text;
	
	private LanguageType(String text){
		this.text=text;
	}

	public String getText() {
		return text;
	}
	
	public static String getTexts() {
		String result="";
		LanguageType[] jobs=LanguageType.values();
		for(LanguageType job : jobs){
			result+=job.getText()+SymbolConstant.COMMA;
		}
		return result.substring(0, result.length()-1);
	}
}
