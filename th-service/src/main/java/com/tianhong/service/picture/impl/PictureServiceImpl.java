/**  
 * @Title: PictureServiceImpl.java
 * @Package com.tianhong.service.picture.impl
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 下午12:21:36
 */
package com.tianhong.service.picture.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.picture.PictureMapper;
import com.tianhong.domain.picture.Picture;
import com.tianhong.domain.user.User;
import com.tianhong.service.picture.PictureService;

/**
 * ClassName: PictureServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 下午12:21:36
 */
@Service("pictureService")
@Transactional
public class PictureServiceImpl implements PictureService {

	@Autowired
	private PictureMapper pictureMapper;

	public Picture insertSelective(Picture picture) throws Exception {
		pictureMapper.insertSelective(picture);
		return picture;
	}

	public Picture getByPrimaryKey(Integer id) throws Exception {
		return pictureMapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(Picture picture) throws Exception {
		return pictureMapper.updateByPrimaryKeySelective(picture);
	}

	public List<Picture> findByMenuId(Integer menuId) throws Exception {
		return pictureMapper.findByMenuId(menuId);
	}

	public Picture insertSelective(int menuId, String title, String url, byte pictureType, String path, User user)
			throws Exception {
		byte sort = pictureMapper.selectMaxSort(menuId, pictureType);
		Picture picture = new Picture();
		picture.setMenuId(menuId);
		picture.setTitle(title);
		picture.setUrl(url);
		picture.setPictureType(pictureType);
		picture.setPath(path);
		picture.setSort(sort);
		picture.setCreateId(user.getId());
		picture.setCreateTime(new Date());
		pictureMapper.insertSelective(picture);
		return picture;
	}

	public byte getMaxSort(int menuId, byte pictureType) throws Exception {
		return pictureMapper.selectMaxSort(menuId, pictureType);
	}

}
