package com.tianhong.dao.user;

import java.util.List;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.user.User;

public interface UserMapper extends BaseMapper<User> {

	List<User> selectAllUsers() throws Exception;

	List<User> selectPageUsers(User user) throws Exception;

	int selectCount(User user) throws Exception;

	User selectByName(String userName) throws Exception;
}