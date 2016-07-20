/**
 * 
 */
package com.tianhong.service.user;

import java.util.List;

import com.tianhong.domain.user.User;

/**
 * @author Administrator
 *
 */
public interface UserService {

	List<User> getAllUsers() throws Exception;

	List<User> getPageUsers(User user) throws Exception;

	int getCount(User user) throws Exception;

	boolean deleteByPrimaryKey(int id) throws Exception;

	User getByPrimaryKey(int id) throws Exception;

	User insertUser(User user) throws Exception;

	User updateUser(User user) throws Exception;

	User getByName(String userName) throws Exception;
}
