/**  
 * @Title: CommonConstant.java
 * @Package com.lit.constant
 * @Description: 描述
 * @author raowenxing
 * @date 2016-4-25 上午11:08:49
 */
package com.tianhong.constant;

import com.tianhong.utils.LoadConfigUtil;

/**
 * ClassName: CommonConstant
 * 
 * @Description: 描述
 * @author raowenxing
 * @date 2016-4-25 上午11:08:49
 */
public class CommonConstant {

	public static final String BAR = "-";
	public static final String COMMA = ",";

	public static final String DESC = "DESC";
	public static final String ASC = "ASC";

	public static final String FORMAT_TYPE_DAY = "%Y-%m-%d";
	public static final String FORMAT_TYPE_WEEK = "%Y-%V";
	public static final String FORMAT_TYPE_MONTH = "%Y-%m";

	public static final String YYYY_MM_dd_T_HH_mm_ss_Z = "yyyy-MM-dd'T'hh:ss:mm'Z'";
	public static final String YYYY_MM_dd_HH_mm_ss = "yyyy-MM-dd HH:mm:ss";
	public static final String YYYYMMddHHmmss = "yyyyMMddHHmmss";
	public static final String YYYYMM = "yyyyMM";

	public static final byte YES = 1;
	public static final byte NO = 0;

	public static final String MDW_CLIENT_PATH = LoadConfigUtil.getString("client.path");// "MDW/release/";
	public static final String MDW_EXE_PATH = LoadConfigUtil.getString("exe.path");// "MDW/exe/";

	public static final String GB = "GB";// 一次下载大小1M

	public static final String REQUEST_METHOD_POST = "post";
	public static final String REQUEST_METHOD_GET = "get";
}