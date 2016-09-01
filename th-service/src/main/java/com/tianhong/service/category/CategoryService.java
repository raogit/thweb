/**
 * 
 */
package com.tianhong.service.category;

import java.util.List;

import com.tianhong.domain.category.Category;
import com.tianhong.domain.user.User;

/**
 * @author Administrator
 *
 */
public interface CategoryService {

	boolean deleteByPrimaryKey(Integer id) throws Exception;

	Category insertSelective(Category category, User user) throws Exception;

	Category saveOrUpdate(Category category, User user) throws Exception;

	Category getByPrimaryKey(Integer id) throws Exception;

	int updateByPrimaryKeySelective(Category category) throws Exception;

	Category getPage(Category category) throws Exception;

	List<Category> getList(Category category) throws Exception;
}
