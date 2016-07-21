/**  
 * @Title: CultureServiceImpl.java
 * @Package com.tianhong.service.culture.impl
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午11:17:24
 */
package com.tianhong.service.culture.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.culture.CultureMapper;
import com.tianhong.domain.culture.Culture;
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

}
