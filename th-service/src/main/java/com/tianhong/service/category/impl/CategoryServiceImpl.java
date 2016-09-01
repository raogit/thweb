/**
 * 
 */
package com.tianhong.service.category.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.category.CategoryMapper;
import com.tianhong.domain.category.Category;
import com.tianhong.service.category.CategoryService;

/**
 * @author Administrator
 *
 */
@Service("storeCategoryService")
@Transactional
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryMapper categoryMapper;

	public int deleteByPrimaryKey(Integer id) throws Exception {
		return categoryMapper.deleteByPrimaryKey(id);
	}

	public Category insertSelective(Category category) throws Exception {
		categoryMapper.insertSelective(category);
		return category;
	}

	public Category selectByPrimaryKey(Integer id) throws Exception {
		return categoryMapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(Category category) throws Exception {
		return categoryMapper.updateByPrimaryKeySelective(category);
	}

	public Category getPage(Category category) throws Exception {
		List<Category> page = categoryMapper.page(category);
		int count = categoryMapper.count(category);
		category.setObj(page);
		category.setTotalRow(count);
		return category;
	}

	public List<Category> getList(Category category) throws Exception {
		return categoryMapper.list(category);
	}

}
