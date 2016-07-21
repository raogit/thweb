/**  
 * @Title: PictureService.java
 * @Package com.tianhong.service.picture
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 下午12:20:40
 */
package com.tianhong.service.picture;

import com.tianhong.domain.picture.Picture;
import com.tianhong.domain.user.User;

/**
 * ClassName: PictureService
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 下午12:20:40
 */
public interface PictureService {

	Picture insertSelective(Picture picture) throws Exception;

	Picture insertSelective(int menuId, String title, String url, byte pictureType, String path, User user)
			throws Exception;

	Picture getByPrimaryKey(Integer id) throws Exception;

	Picture getByMenuId(Integer menuId) throws Exception;

	int updateByPrimaryKeySelective(Picture picture) throws Exception;

}
