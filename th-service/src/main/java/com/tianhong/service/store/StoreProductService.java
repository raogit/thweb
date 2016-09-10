/**
 * 
 */
package com.tianhong.service.store;

import java.util.List;

import com.tianhong.domain.store.StoreProduct;
import com.tianhong.domain.user.User;

/**
 * @author Administrator
 *
 */
public interface StoreProductService {

	int deleteByPrimaryKey(Integer id) throws Exception;

	StoreProduct insertSelective(StoreProduct record) throws Exception;

	StoreProduct saveOrUpdate(StoreProduct storeProduct, User user) throws Exception;

	StoreProduct getByPrimaryKey(Integer id) throws Exception;

	int updateByPrimaryKeySelective(StoreProduct record) throws Exception;

	StoreProduct getPage(StoreProduct storeProduct) throws Exception;

	List<StoreProduct> getList(StoreProduct storeProduct) throws Exception;

	List<StoreProduct> getList(int categoryId) throws Exception;
}
