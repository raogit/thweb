/**  
 * @Title: PictureService.java
 * @Package com.tianhong.service.picture
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 下午12:20:40
 */
package com.tianhong.service.picture;

import java.util.List;

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

	Picture save(Picture picture, User user) throws Exception;

	Picture insertSelective(Picture picture) throws Exception;

	Picture insertSelective(int menuId, String title, String url, byte pictureType, String path, User user)
			throws Exception;

	Picture getByPrimaryKey(Integer id) throws Exception;

	List<Picture> findByMenuId(Integer menuId) throws Exception;

	int updateByPrimaryKeySelective(Picture picture) throws Exception;

	byte getMaxSort(int menuId, byte pictureType) throws Exception;

	List<Picture> updateLeftOrRight(int id, String flag) throws Exception;

	List<Picture> delete(int id, String path) throws Exception;

	Picture getPage(Picture picture) throws Exception;

	List<Picture> getList(Picture picture) throws Exception;
}
