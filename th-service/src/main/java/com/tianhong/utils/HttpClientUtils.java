/**  
 * @Title: HttpClientUtils.java
 * @Package com.lit.util
 * @Description: 描述
 * @author raowenxing
 * @date 2016-5-20 上午11:31:57
 */
package com.tianhong.utils;

import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

/**
 * ClassName: HttpClientUtils
 * 
 * @Description: 描述
 * @author raowenxing
 * @date 2016-5-20 上午11:31:57
 */
@SuppressWarnings({ "deprecation", "resource" })
public class HttpClientUtils {

	public static final int TIME_OUT = 45000;

	public static String httpGet(String url) throws Exception {
		String body = "";
		HttpClient httpClient = new DefaultHttpClient();
		HttpGet method = new HttpGet(url);
		method.addHeader("Content-type", "application/json; charset=utf-8");
		method.setHeader("Accept", "application/json");
		HttpResponse response = httpClient.execute(method);
		int statusCode = response.getStatusLine().getStatusCode();
		if (statusCode == HttpStatus.SC_OK) {
			body = EntityUtils.toString(response.getEntity());
		} else {
			throw new Exception("http get failed, statusCode:" + statusCode);
		}
		return body;
	}

}
