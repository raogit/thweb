/**
 * 
 */
package com.tianhong.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.user.UserMapper;
import com.tianhong.domain.user.User;
import com.tianhong.service.user.UserService;

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

}
