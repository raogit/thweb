/**
 * 
 */
package com.tianhong.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author Administrator
 *
 */
public class DateUtils extends org.apache.commons.lang.time.DateUtils {

	public static String parseString(Date date, String pattern) throws Exception {
		SimpleDateFormat format = new SimpleDateFormat(pattern);
		return format.format(date);
	}

	public static Date parseDate(String date, String pattern) throws Exception {
		SimpleDateFormat format = new SimpleDateFormat(pattern);
		return format.parse(date);
	}
}
