/**  
 * @Title: AssertUtils.java
 * @Package com.tianhong.utils
 * @Description: 描述
 * @author xing
 * @date 2016年7月14日 下午5:59:03
 */
package com.tianhong.utils;

import org.apache.commons.lang3.StringUtils;
import org.springframework.util.Assert;

/**
 * ClassName: AssertUtils
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月14日 下午5:59:03
 */
public class AssertUtils extends Assert {

	public static void isNotEmpty(String expression, String message) {
		if (StringUtils.isEmpty(expression)) {
			throw new IllegalArgumentException(message);
		}
	}

}
