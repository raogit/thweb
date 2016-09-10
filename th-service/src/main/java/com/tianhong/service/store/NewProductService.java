/**
 * 
 */
package com.tianhong.service.store;

import java.util.List;

import com.tianhong.domain.store.NewProduct;
import com.tianhong.domain.user.User;

/**
 * @author Administrator
 *
 */
public interface NewProductService {

	int deleteByPrimaryKey(Integer id) throws Exception;

	NewProduct insertSelective(NewProduct newProduct) throws Exception;

	NewProduct saveOrUpdate(NewProduct newProduct, User user) throws Exception;

	NewProduct getByPrimaryKey(Integer id) throws Exception;

	int updateByPrimaryKeySelective(NewProduct newProduct) throws Exception;

	NewProduct getPage(NewProduct newProduct) throws Exception;

	List<NewProduct> getList(NewProduct newProduct) throws Exception;

	List<NewProduct> getList(int categoryId) throws Exception;

}
