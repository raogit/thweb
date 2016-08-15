/**  
 * @Title: AppleFirmwareUrlQuartz.java
 * @Package com.lit.quartz
 * @Description: ����
 * @author raowenxing
 * @date 2016-6-14 ����6:23:47
 */
package com.tianhong.quartz;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Component;

/**
 * 
 * ClassName: AppleFirmwareUrlQuartz
 * 
 * @Description: 描述
 * @author raowenxing
 * @date 2016-6-14 下午6:30:03
 */
@Component("recruitQuartz")
public class RecruitQuartz {
	private static Log log = LogFactory.getLog(RecruitQuartz.class);

	private static boolean LOCK = false;

	protected void execute() {
		if (!LOCK) {
			LOCK = true;
			try {
				log.info("定时任务");
			} catch (Exception e) {
				log.error("", e);
			}
			LOCK = false;
		}
	}

}
