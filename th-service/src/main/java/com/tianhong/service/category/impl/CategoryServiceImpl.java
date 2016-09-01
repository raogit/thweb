/**
 * 
 */
package com.tianhong.service.category.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.category.CategoryMapper;
import com.tianhong.domain.category.Category;
import com.tianhong.domain.user.User;
import com.tianhong.service.category.CategoryService;

/**
 * @author Administrator
 *
 */
@Service("categoryService")
@Transactional
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryMapper categoryMapper;

	public boolean deleteByPrimaryKey(Integer id) throws Exception {
		categoryMapper.deleteByPrimaryKey(id);
		return true;
	}

	public Category insertSelective(Category category, User user) throws Exception {
		category.setCreateId(user.getId());
		category.setCreateTime(new Date());
		categoryMapper.insertSelective(category);
		return category;
	}

	public Category getByPrimaryKey(Integer id) throws Exception {
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

	public Category saveOrUpdate(Category category, User user) throws Exception {
		if (category != null && category.getId() > 0) {
			Category c = getByPrimaryKey(category.getId());
			c.setName(category.getName());
			c.setEnName(category.getEnName());
			c.setUpdateId(user.getId());
			c.setUpdateTime(new Date());
			updateByPrimaryKeySelective(c);
		} else {
			insertSelective(category, user);
		}
		return category;
	}

}
