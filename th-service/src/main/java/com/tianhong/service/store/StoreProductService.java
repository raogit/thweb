/**
 * 
 */
package com.tianhong.service.store;

import java.util.List;

import com.tianhong.domain.store.StoreProduct;

/**
 * @author Administrator
 *
 */
public interface StoreProductService {

	int deleteByPrimaryKey(Integer id) throws Exception;

	StoreProduct insertSelective(StoreProduct record) throws Exception;

	StoreProduct selectByPrimaryKey(Integer id) throws Exception;

	int updateByPrimaryKeySelective(StoreProduct record) throws Exception;

	StoreProduct getPage(StoreProduct storeProduct) throws Exception;

	List<StoreProduct> getList(StoreProduct storeProduct) throws Exception;

}
