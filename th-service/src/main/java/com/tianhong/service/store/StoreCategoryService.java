/**
 * 
 */
package com.tianhong.service.store;

import java.util.List;

import com.tianhong.domain.store.StoreCategory;

/**
 * @author Administrator
 *
 */
public interface StoreCategoryService {

	int deleteByPrimaryKey(Integer id) throws Exception;

	StoreCategory insertSelective(StoreCategory record) throws Exception;

	StoreCategory selectByPrimaryKey(Integer id) throws Exception;

	int updateByPrimaryKeySelective(StoreCategory record) throws Exception;

	StoreCategory getPage(StoreCategory storeCategory) throws Exception;

	List<StoreCategory> getList(StoreCategory storeCategory) throws Exception;
}
