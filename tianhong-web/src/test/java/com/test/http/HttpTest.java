/**  
 * @Title: HttpTest.java
 * @Package com.test.http
 * @Description: 描述
 * @author xing
 * @date 2016年10月10日 上午9:17:37
 */
package com.test.http;

import com.tianhong.utils.HttpClientUtils;

/**
 * ClassName: HttpTest
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年10月10日 上午9:17:37
 */
public class HttpTest {

	/**
	 * @Description: 描述
	 * @param @param
	 *            args
	 * @return void
	 * @throws @author
	 *             xing
	 * @date 2016年10月10日 上午9:17:37
	 */
	public static void main(String[] args) {

		try {
			String body = HttpClientUtils.httpGet("http://hq.sinajs.cn/list=sz002419");
			System.out.println(body);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

}
