/**
 * 
 */
package com.tianhong.service.user.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.user.UserMapper;
import com.tianhong.domain.user.User;
import com.tianhong.service.user.UserService;
import com.tianhong.utils.AssertUtils;
import com.tianhong.utils.MD5;

/**
 * @author Administrator
 *
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	public List<User> getAllUsers() throws Exception {
		return userMapper.selectAllUsers();
	}

	public List<User> getPageUsers(User user) throws Exception {
		return userMapper.selectPageUsers(user);
	}

	public int getCount(User user) throws Exception {
		return userMapper.selectCount(user);
	}

	public boolean deleteByPrimaryKey(int id) throws Exception {
		User user = userMapper.selectByPrimaryKey(id);
		AssertUtils.notNull(user, "用户不存在");
		user.setIsDeleted(true);
		user.setUpdateTime(new Date());
		userMapper.updateByPrimaryKeySelective(user);
		return true;
	}

	public User getByPrimaryKey(int id) throws Exception {
		return userMapper.selectByPrimaryKey(id);
	}

	public User insertUser(User user) throws Exception {
		User u = userMapper.selectByName(user.getUserName());
		AssertUtils.isNull(u, "用户名已存在");
		AssertUtils.notNull(user, "用户对象为空");
		AssertUtils.isNotEmpty(user.getUserName(), "用户名为空");
		AssertUtils.isNotEmpty(user.getPassword(), "密码为空");
		user.setUserName(user.getUserName().trim());
		user.setPassword(MD5.GetMD5Code(user.getPassword().trim()));
		user.setIsDeleted(false);
		user.setCreateTime(new Date());
		userMapper.insertSelective(user);
		return user;
	}

	public User updateUser(User user) throws Exception {
		user.setUserName(user.getUserName().trim());
		user.setUpdateTime(new Date());
		userMapper.updateByPrimaryKeySelective(user);
		return user;
	}

	public User getByName(String userName) throws Exception {
		return userMapper.selectByName(userName);
	}

}
