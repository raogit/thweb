/**
 * 
 */
package com.tianhong.service.user;

import java.util.List;

import com.tianhong.domain.user.User;
import com.tianhong.page.Page;

/**
 * @author Administrator
 *
 */
public interface UserService {

	List<User> getAllUsers() throws Exception;

	List<User> getPageUsers(Page page) throws Exception;

	int getCount() throws Exception;

	boolean deleteByPrimaryKey(int id) throws Exception;

	User getByPrimaryKey(int id) throws Exception;
}
