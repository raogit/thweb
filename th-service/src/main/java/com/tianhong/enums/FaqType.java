package com.tianhong.enums;

import com.tianhong.constant.SymbolConstant;

/**
 * FAQ类型
 * @author sky
 *
 */
public enum FaqType {
	GY_ZP("关于招聘"),
	GY_PX("关于培训"),
	GY_XCFZ("关于薪酬与发展"),
	GY_BD("关于报到"),
	SZ_XZ("社会招聘须知"),
	HD_WD("互动问答");
	
	private String text;
	
	private FaqType(String text){
		this.text=text;
	}

	public String getText() {
		return text;
	}
	
	public static String getTexts() {
		String result="";
		FaqType[] jobs=FaqType.values();
		for(FaqType job : jobs){
			result+=job.getText()+SymbolConstant.COMMA;
		}
		return result.substring(0, result.length()-1);
	}
}
