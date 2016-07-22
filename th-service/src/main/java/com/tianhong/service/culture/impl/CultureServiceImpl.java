/**  
 * @Title: CultureServiceImpl.java
 * @Package com.tianhong.service.culture.impl
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午11:17:24
 */
package com.tianhong.service.culture.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.culture.CultureMapper;
import com.tianhong.domain.culture.Culture;
import com.tianhong.domain.user.User;
import com.tianhong.service.culture.CultureService;

/**
 * ClassName: CultureServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午11:17:24
 */
@Service("cultureService")
@Transactional
public class CultureServiceImpl implements CultureService {

	@Autowired
	private CultureMapper cultureMapper;

	public Culture insertSelective(Culture culture) throws Exception {
		cultureMapper.insertSelective(culture);
		return culture;
	}

	public int updateByPrimaryKeySelective(Culture culture) throws Exception {
		return cultureMapper.updateByPrimaryKeySelective(culture);
	}

	public Culture getByMenuId(int menuId) throws Exception {
		return cultureMapper.selectByMenuId(menuId);
	}

	public Culture insertSelective(int menuId, String title, String content, String path, User user) throws Exception {
		Culture culture = new Culture();
		culture.setMenuId(menuId);
		culture.setTitle(title);
		culture.setContent(content);
		culture.setPath(path);
		culture.setCreateId(user.getId());
		culture.setCreateTime(new Date());
		cultureMapper.insertSelective(culture);
		return culture;
	}

	public List<Culture> insertSelective(int menuId, String title, String content, List<String> paths, User user)
			throws Exception {
		List<Culture> cultures = new ArrayList<Culture>();
		for (String path : paths) {
			Culture culture = new Culture();
			culture.setMenuId(menuId);
			culture.setTitle(title);
			culture.setContent(content);
			culture.setPath(path);
			culture.setCreateId(user.getId());
			culture.setCreateTime(new Date());
			cultureMapper.insertSelective(culture);
			cultures.add(culture);
		}
		return cultures;
	}

	public boolean deleteByPrimaryKey(Integer id, User user) throws Exception {
		Culture culture = cultureMapper.selectByPrimaryKey(id);
		culture.setIsDeleted(false);
		culture.setUpdateId(user.getId());
		culture.setUpdateTime(new Date());
		cultureMapper.updateByPrimaryKeySelective(culture);
		return true;
	}

	public Culture getByPrimaryKey(Integer id) throws Exception {
		return cultureMapper.selectByPrimaryKey(id);
	}

	public List<Culture> findPage(Culture culture) throws Exception {
		return cultureMapper.findPage(culture);
	}

	public int getCount(Culture culture) throws Exception {
		return cultureMapper.getCount(culture);
	}

}
