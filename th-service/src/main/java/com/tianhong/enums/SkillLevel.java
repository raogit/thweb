package com.tianhong.enums;

import com.tianhong.constant.SymbolConstant;

/**
 * 技能等级：一般，良好，熟练，精通;General, good, skilled, proficient
 * @author sky
 *
 */
public enum SkillLevel {
	general("一般"),
	good("良好"),
	skilled("熟练"),
	proficient("精通");
	
	private String text;
	
	private SkillLevel(String text){
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
