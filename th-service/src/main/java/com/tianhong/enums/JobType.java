package com.tianhong.enums;

import com.tianhong.constant.SymbolConstant;

/**
 * 工作类型
 * @author sky
 *
 */
public enum JobType {
	//全职，兼职，实习
	FULLTIME("全职"),
	PARTTIME("兼职"),
	INTERNSHIP("实习");
	
	private String text;
	
	private JobType(String text){
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
