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

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.constant.CommonConstant;
import com.tianhong.dao.picture.PictureMapper;
import com.tianhong.domain.picture.Picture;
import com.tianhong.domain.user.User;
import com.tianhong.service.picture.PictureService;
import com.tianhong.utils.AssertUtils;
import com.tianhong.utils.DateUtils;

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
		List<Picture> list = pictureMapper.findByMenuId(menuId);
		if (!CollectionUtils.isEmpty(list)) {
			for (Picture pic : list) {
				pic.setCreateTimeStr(DateUtils.parseString(pic.getCreateTime(), CommonConstant.YYYY_MM_dd_NIAN));
			}
		}
		return list;

	}

	public List<Picture> findSystemByMenuId(Integer menuId) throws Exception {
		List<Picture> list = pictureMapper.findSystemByMenuId(menuId);
		if (!CollectionUtils.isEmpty(list)) {
			for (Picture pic : list) {
				pic.setCreateTimeStr(DateUtils.parseString(pic.getCreateTime(), CommonConstant.YYYY_MM_dd_NIAN));
			}
		}
		return list;

	}

	public List<Picture> findInvestmentByMenuId(Integer menuId) throws Exception {
		List<Picture> list = pictureMapper.findInvestmentByMenuId(menuId);
		if (!CollectionUtils.isEmpty(list)) {
			for (Picture pic : list) {
				pic.setCreateTimeStr(DateUtils.parseString(pic.getCreateTime(), CommonConstant.YYYY_MM_dd_NIAN));
			}
		}
		return list;
	}

	public Picture insertSelective(int menuId, String title, String url, byte pictureType, String path, User user) throws Exception {
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

	public List<Picture> updateLeftOrRight(int id, String flag) throws Exception {
		Picture picture = pictureMapper.selectByPrimaryKey(id);
		AssertUtils.notNull(picture, "对应的图片不存在");
		List<Picture> pictures = pictureMapper.findByMenuId(picture.getMenuId());
		Picture leftPicture = null;
		Picture rightPicture = null;
		byte left = 0;
		byte right = 0;
		if (CommonConstant.LEFT.equals(flag)) {// 左移
			left = 0;
			right = picture.getSort();
			rightPicture = picture;
			for (int i = 0; i < pictures.size(); i++) {
				Picture p = pictures.get(i);
				if (p.getId().intValue() == picture.getId().intValue()) {
					AssertUtils.isTrue((i - 1) >= 0, "已是最左边了");
					leftPicture = pictures.get(i - 1);
					left = leftPicture.getSort();
					break;
				}
			}
		} else {// 右移
			left = picture.getSort();
			right = 0;
			leftPicture = picture;
			for (int i = 0; i < pictures.size(); i++) {
				Picture p = pictures.get(i);
				if (p.getId().intValue() == picture.getId().intValue()) {
					AssertUtils.isTrue((i + 1) < pictures.size(), "已是最右边了");
					rightPicture = pictures.get(i + 1);
					right = rightPicture.getSort();
					break;
				}
			}

		}
		rightPicture.setSort(left);
		leftPicture.setSort(right);
		pictureMapper.updateByPrimaryKeySelective(rightPicture);
		pictureMapper.updateByPrimaryKeySelective(leftPicture);
		return pictureMapper.findByMenuId(picture.getMenuId());
	}

	public List<Picture> delete(int id, String path) throws Exception {
		Picture picture = pictureMapper.selectByPrimaryKey(id);

		AssertUtils.notNull(picture, "对应的图片不存在");
		List<Picture> pictures = pictureMapper.findByMenuId(picture.getMenuId());
		pictureMapper.deleteByPrimaryKey(picture.getId());
		for (Picture p : pictures) {
			if (p.getId().intValue() == picture.getId().intValue()) {
				pictures.remove(p);
				break;
			}
		}
		return pictures;
	}

	public Picture save(Picture picture, User user) throws Exception {
		if (picture.getId() != null && picture.getId() > 0) {
			picture.setUpdateId(user.getId());
			picture.setUpdateTime(new Date());
			this.updateByPrimaryKeySelective(picture);
		} else {
			byte sort = pictureMapper.selectMaxSort(picture.getMenuId(), picture.getPictureType());
			picture.setSort(sort);
			picture.setCreateId(user.getId());
			picture.setCreateTime(new Date());
			this.insertSelective(picture);
		}
		return picture;
	}

	public Picture getPage(Picture picture) throws Exception {
		List<Picture> page = pictureMapper.page(picture);
		if (!CollectionUtils.isEmpty(page)) {
			for (Picture pic : page) {
				pic.setCreateTimeStr(DateUtils.parseString(pic.getCreateTime(), CommonConstant.YYYY_MM_dd_NIAN));
			}
		}
		int count = pictureMapper.count(picture);
		picture.setObj(page);
		picture.setTotalRow(count);
		return picture;
	}

	public Picture getSystemPage(Picture picture) throws Exception {
		List<Picture> page = pictureMapper.systemPage(picture);
		if (!CollectionUtils.isEmpty(page)) {
			for (Picture pic : page) {
				pic.setCreateTimeStr(DateUtils.parseString(pic.getCreateTime(), CommonConstant.YYYY_MM_dd_NIAN));
			}
		}
		int count = pictureMapper.count(picture);
		picture.setObj(page);
		picture.setTotalRow(count);
		return picture;
	}

	public Picture getinvestmentPage(Picture picture) throws Exception {
		List<Picture> page = pictureMapper.findinvestmentPage(picture);
		if (!CollectionUtils.isEmpty(page)) {
			for (Picture pic : page) {
				pic.setCreateTimeStr(DateUtils.parseString(pic.getCreateTime(), CommonConstant.YYYY_MM_dd_NIAN));
			}
		}
		int count = pictureMapper.count(picture);
		picture.setObj(page);
		picture.setTotalRow(count);
		return picture;
	}

	public List<Picture> getList(Picture picture) throws Exception {
		List<Picture> list = pictureMapper.list(picture);
		if (!CollectionUtils.isEmpty(list)) {
			for (Picture pic : list) {
				pic.setCreateTimeStr(DateUtils.parseString(pic.getCreateTime(), CommonConstant.YYYY_MM_dd_NIAN));
			}
		}
		return list;
	}

	public List<Picture> findEjournalsByMenuId(Integer menuId) throws Exception {
		List<Picture> list = pictureMapper.findEjournalsByMenuId(menuId);
		if (!CollectionUtils.isEmpty(list)) {
			for (Picture pic : list) {
				pic.setCreateTimeStr(DateUtils.parseString(pic.getCreateTime(), CommonConstant.YYYY_MM_dd_NIAN));
			}
		}
		return list;
	}

	public Picture getPageEjournals(Picture picture) throws Exception {
		List<Picture> page = pictureMapper.pageEjournals(picture);
		if (!CollectionUtils.isEmpty(page)) {
			for (Picture pic : page) {
				pic.setCreateTimeStr(DateUtils.parseString(pic.getCreateTime(), CommonConstant.YYYY_MM_dd_NIAN));
			}
		}
		int count = pictureMapper.count(picture);
		picture.setObj(page);
		picture.setTotalRow(count);
		return picture;
	}

	public List<Picture> findEjournalsListByMenuId(Integer menuId) throws Exception {
		Picture p = new Picture();
		p.setMenuId(menuId);
		List<Picture> list = pictureMapper.pageEjournalsList(p);
		if (!CollectionUtils.isEmpty(list)) {
			for (Picture pic : list) {
				pic.setCreateTimeStr(DateUtils.parseString(pic.getCreateTime(), CommonConstant.YYYY_MM_dd_NIAN));
			}
		}
		return list;
	}

}
