/**  
 * @Title: BasePathServiceImpl.java
 * @Package com.tianhong.service.path.impl
 * @Description: 描述
 * @author xing
 * @date 2016年11月28日 下午2:32:47
 */
package com.tianhong.service.path.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.path.BasePathMapper;
import com.tianhong.domain.path.BasePath;
import com.tianhong.service.path.BasePathService;

/**
 * ClassName: BasePathServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年11月28日 下午2:32:47
 */
@Service("basePathService")
@Transactional
public class BasePathServiceImpl implements BasePathService {

	@Autowired
	private BasePathMapper basePathMapper;

	public BasePath getByFlatForm(String platForm) throws Exception {
		return basePathMapper.selectByFlatForm(platForm);
	}

	public BasePath saveFlatForm(String platForm, String path) throws Exception {
		BasePath basePath = basePathMapper.selectByFlatForm(platForm);
		if (basePath != null) {
			basePath.setBasePath(path);
			basePathMapper.updateByPrimaryKeySelective(basePath);
		} else {
			basePath = new BasePath();
			basePath.setBasePath(path);
			basePath.setPlatForm(platForm);
			basePathMapper.insertSelective(basePath);
		}
		return basePath;
	}

}
