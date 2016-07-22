/**  
 * @Title: CultureService.java
 * @Package com.tianhong.service.culture
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午11:13:41
 */
package com.tianhong.service.culture;

import java.util.List;

import com.tianhong.domain.culture.Culture;
import com.tianhong.domain.user.User;

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

	Culture insertSelective(int menuId, String title, String content, String path, User user) throws Exception;

	List<Culture> insertSelective(int menuId, String title, String content, List<String> paths, User user)
			throws Exception;
}
