/**
 * 
 */
package com.tianhong.service.store.impl;

import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.store.NewActivityMapper;
import com.tianhong.domain.store.NewActivity;
import com.tianhong.domain.user.User;
import com.tianhong.service.store.NewActivityService;

/**
 * @author Administrator
 *
 */
@Service("newActivityService")
@Transactional
public class NewActivityServiceImpl implements NewActivityService {

	@Autowired
	private NewActivityMapper newActivityMapper;

	public int deleteByPrimaryKey(Integer id) throws Exception {
		return newActivityMapper.deleteByPrimaryKey(id);
	}

	public NewActivity getByPrimaryKey(Integer id) throws Exception {
		return newActivityMapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(NewActivity newActivity) throws Exception {
		return newActivityMapper.updateByPrimaryKeySelective(newActivity);
	}

	public NewActivity saveOrUpdate(NewActivity newActivity, User user) throws Exception {
		if (newActivity != null && newActivity.getCategoryId() > 0) {
			NewActivity activity = newActivityMapper.selectByCategoryId(newActivity.getCategoryId());
			if (activity != null) {
				activity.setName(newActivity.getName());
				activity.setContent(newActivity.getContent());
				activity.setUpdateId(user.getId());
				activity.setUpdateTime(new Date());
				newActivityMapper.updateByPrimaryKeySelective(activity);
				return activity;
			}
		}
		newActivity.setCreateId(user.getId());
		newActivity.setCreateTime(new Date());
		newActivityMapper.insertSelective(newActivity);
		return newActivity;
	}

	public NewActivity getByCategoryId(Integer categoryId) throws Exception {
		return newActivityMapper.selectByCategoryId(categoryId);
	}

}
