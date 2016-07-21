/**  
 * @Title: CultureService.java
 * @Package com.tianhong.service.culture
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午11:13:41
 */
package com.tianhong.service.culture;

import com.tianhong.domain.culture.Culture;

/**
 * ClassName: CultureService
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午11:13:41
 */
public interface CultureService {

	Culture insertSelective(Culture culture) throws Exception;

	int updateByPrimaryKeySelective(Culture culture) throws Exception;

	Culture getByMenuId(int menuId) throws Exception;
}
