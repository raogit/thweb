/**
 * 
 */
package com.tianhong.service.store.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.store.StoreProductMapper;
import com.tianhong.domain.store.StoreProduct;
import com.tianhong.service.store.StoreProductService;

/**
 * @author Administrator
 *
 */
@Service("storeProductService")
@Transactional
public class StoreProductServiceImpl implements StoreProductService {

	@Autowired
	private StoreProductMapper storeProductMapper;

	public int deleteByPrimaryKey(Integer id) throws Exception {
		return storeProductMapper.deleteByPrimaryKey(id);
	}

	public StoreProduct insertSelective(StoreProduct record) throws Exception {
		storeProductMapper.insertSelective(record);
		return record;
	}

	public StoreProduct selectByPrimaryKey(Integer id) throws Exception {
		return storeProductMapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(StoreProduct record) throws Exception {
		return storeProductMapper.updateByPrimaryKeySelective(record);
	}

	public StoreProduct getPage(StoreProduct storeProduct) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<StoreProduct> getList(StoreProduct storeProduct) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
