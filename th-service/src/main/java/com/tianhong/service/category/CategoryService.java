/**
 * 
 */
package com.tianhong.service.category;

import java.util.List;

import com.tianhong.domain.category.Category;

/**
 * @author Administrator
 *
 */
public interface CategoryService {

	int deleteByPrimaryKey(Integer id) throws Exception;

	Category insertSelective(Category category) throws Exception;

	Category selectByPrimaryKey(Integer id) throws Exception;

	int updateByPrimaryKeySelective(Category category) throws Exception;

	Category getPage(Category category) throws Exception;

	List<Category> getList(Category category) throws Exception;
}
