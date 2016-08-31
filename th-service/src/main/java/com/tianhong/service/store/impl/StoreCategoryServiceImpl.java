/**
 * 
 */
package com.tianhong.service.store.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.store.StoreCategoryMapper;
import com.tianhong.domain.store.StoreCategory;
import com.tianhong.service.store.StoreCategoryService;

/**
 * @author Administrator
 *
 */
@Service("storeCategoryService")
@Transactional
public class StoreCategoryServiceImpl implements StoreCategoryService {

	@Autowired
	private StoreCategoryMapper storeCategoryMapper;

	public int deleteByPrimaryKey(Integer id) throws Exception {
		return storeCategoryMapper.deleteByPrimaryKey(id);
	}

	public StoreCategory insertSelective(StoreCategory record) throws Exception {
		storeCategoryMapper.insertSelective(record);
		return record;
	}

	public StoreCategory selectByPrimaryKey(Integer id) throws Exception {
		return storeCategoryMapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(StoreCategory record) throws Exception {
		return storeCategoryMapper.updateByPrimaryKeySelective(record);
	}

	public StoreCategory getPage(StoreCategory storeCategory) throws Exception {
		List<StoreCategory> page = storeCategoryMapper.page(storeCategory);
		int count = storeCategoryMapper.count(storeCategory);
		storeCategory.setObj(page);
		storeCategory.setTotalRow(count);
		return storeCategory;
	}

	public List<StoreCategory> getList(StoreCategory storeCategory) throws Exception {
		return storeCategoryMapper.list(storeCategory);
	}

}
