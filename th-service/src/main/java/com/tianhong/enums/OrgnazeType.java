package com.tianhong.enums;

import com.tianhong.constant.SymbolConstant;

/**
 * 公司性质：外资(欧美)，外资(非欧美)，合资(欧美)，合资(非欧美)，国企/上市公司，民营/私营公司，外企代表处，其它性质
 * @author sky
 *
 */
public enum OrgnazeType {
	WZ_AMR("外资(欧美)"),
	WZ_NAMR("外资(非欧美)"),
	HZ_AMR("合资(欧美)"),
	HZ_NARM("合资(非欧美)"),
	GQ_SS("国企/上市公司"),
	MY_SY("民营/私营公司"),
	WQ_DB("外企代表处"),
	OHTER("其它性质");
	
	private String text;
	
	private OrgnazeType(String text){
		this.text=text;
	}

	public String getText() {
		return text;
	}
	
	public static String getTexts() {
		String result="";
		OrgnazeType[] jobs=OrgnazeType.values();
		for(OrgnazeType job : jobs){
			result+=job.getText()+SymbolConstant.COMMA;
		}
		return result.substring(0, result.length()-1);
	}
}
