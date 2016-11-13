/**
 * 
 */
package com.tianhong.service.store;

import java.util.List;

import com.tianhong.domain.store.NewActivity;
import com.tianhong.domain.user.User;

/**
 * @author Administrator
 *
 */
public interface NewActivityService {

	int deleteByPrimaryKey(Integer id) throws Exception;

	NewActivity saveOrUpdate(NewActivity newActivity, User user) throws Exception;

	NewActivity getByPrimaryKey(Integer id) throws Exception;

	NewActivity getByCategoryId(Integer categoryId) throws Exception;

	int updateByPrimaryKeySelective(NewActivity newActivity) throws Exception;

}
