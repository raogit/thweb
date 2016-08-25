package com.tianhong.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.regex.Pattern;

import javax.annotation.PostConstruct;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 * 
 * ClassName: LoadConfigUtil
 * 
 * @Description: 描述
 * @author raowenxing
 * @date 2016-6-6 下午4:12:39
 */
@SuppressWarnings("restriction")
@Component
@Scope("singleton")
public class LoadConfigUtil {

	private static Log log = LogFactory.getLog(LoadConfigUtil.class);

	private static Properties configProperties;

	// 单例实现
	private static LoadConfigUtil lc;

	@PostConstruct
	public static LoadConfigUtil getInstance() {
		if (lc == null) {
			lc = new LoadConfigUtil();
		}
		return lc;
	}

	private LoadConfigUtil() {
		InputStream inputStreamConfig = null;
		try {
			inputStreamConfig = getClass().getClassLoader().getResourceAsStream("mdw-config.properties");
			getConfigProperties().load(inputStreamConfig);
		} catch (Exception e) {
			log.error("", e);
		} finally {
			if (inputStreamConfig != null) {
				try {
					inputStreamConfig.close();
				} catch (IOException e) {
					log.error("", e);
				}
			}
		}
	}

	/**
	 * 
	 * @Description: 描述
	 * @param @param
	 *            key
	 * @param @return
	 * @return String
	 * @throws @author
	 *             raowenxing
	 * @date 2016-6-6 下午4:13:23
	 */
	public static String getString(String key) {
		String tmp = getConfigProperties().getProperty(key);
		try {
			if (tmp == null) {
				System.out.println("###error####  can not find constant--key=" + key);
			} else {
				tmp = tmp.trim();
			}
			tmp = new String(tmp.getBytes("iso-8859-1"), "utf8");
		} catch (Exception e) {
			log.error("", e);
		}
		return tmp;
	}

	/**
	 * 
	 * @Description: 描述
	 * @param @param
	 *            key
	 * @param @return
	 * @return String
	 * @throws @author
	 *             raowenxing
	 * @date 2016-6-6 下午4:13:32
	 */
	public static String getStringForConfig(String key) {
		String tmp = getConfigProperties().getProperty(key);
		try {
			if (tmp == null) {
				System.out.println("###error####  can not find constant--key=" + key);
			} else {
				tmp = tmp.trim();
			}
			tmp = new String(tmp.getBytes("iso-8859-1"), "utf8");
		} catch (Exception e) {
			log.error("", e);
		}
		return tmp;
	}

	/**
	 * 
	 * @Description: 描述
	 * @param @param
	 *            key
	 * @param @return
	 * @return Integer
	 * @throws @author
	 *             raowenxing
	 * @date 2016-6-6 下午4:13:36
	 */
	public static Integer getInteger(String key) {
		String str = getString(key);
		if (isNumeric(str)) {
			return Integer.parseInt(str);
		} else {
			return 0;
		}
	}

	public static Integer getIntegerForConfig(String key) {
		String str = getStringForConfig(key);
		if (isNumeric(str)) {
			return Integer.parseInt(str);
		} else {
			return 0;
		}
	}

	/**
	 * 
	 * @Description: 描述
	 * @param @param
	 *            str
	 * @param @return
	 * @return boolean
	 * @throws @author
	 *             raowenxing
	 * @date 2016-6-6 下午4:13:41
	 */
	public static boolean isNumeric(String str) {
		Pattern pattern = Pattern.compile("[0-9]*");
		return pattern.matcher(str).matches();
	}

	public static boolean getBoolean(String key) {
		String str = getString(key);
		if (str != null && "true".equals(str.toLowerCase())) {
			return true;
		} else {
			return false;
		}
	}

	public static Properties getConfigProperties() {
		if (configProperties == null) {
			configProperties = new Properties();
			getInstance();
		}
		return configProperties;
	}

	public static void setConfigProperties(Properties configProperties) {
		LoadConfigUtil.configProperties = configProperties;
	}

}
