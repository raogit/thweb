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
}
