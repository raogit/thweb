/**
 * 
 */
package com.tianhong.service.store.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.store.StoreProductMapper;
import com.tianhong.domain.store.StoreProduct;
import com.tianhong.domain.user.User;
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

	public StoreProduct getByPrimaryKey(Integer id) throws Exception {
		return storeProductMapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(StoreProduct record) throws Exception {
		return storeProductMapper.updateByPrimaryKeySelective(record);
	}

	public StoreProduct getPage(StoreProduct storeProduct) throws Exception {
		List<StoreProduct> page = storeProductMapper.page(storeProduct);
		int count = storeProductMapper.count(storeProduct);
		storeProduct.setObj(page);
		storeProduct.setTotalRow(count);
		return storeProduct;
	}

	public List<StoreProduct> getList(StoreProduct storeProduct) throws Exception {
		return storeProductMapper.list(storeProduct);
	}

	public StoreProduct saveOrUpdate(StoreProduct storeProduct, User user) throws Exception {
		if (storeProduct != null && storeProduct.getId() > 0) {
			StoreProduct sp = storeProductMapper.selectByPrimaryKey(storeProduct.getId());
			if (sp != null) {
				sp.setName(storeProduct.getName());
				sp.setPicture(storeProduct.getPicture());
				sp.setPrice(storeProduct.getPrice());
				sp.setUpdateId(user.getId());
				sp.setUpdateTime(new Date());
				storeProductMapper.updateByPrimaryKeySelective(sp);
				return sp;
			}
		}
		storeProduct.setCreateId(user.getId());
		storeProduct.setCreateTime(new Date());
		storeProductMapper.insertSelective(storeProduct);

		return storeProduct;
	}

	public List<StoreProduct> getList(int categoryId) throws Exception {
		StoreProduct storeProduct = new StoreProduct();
		storeProduct.setCategoryId(categoryId);
		return getList(storeProduct);
	}
}
