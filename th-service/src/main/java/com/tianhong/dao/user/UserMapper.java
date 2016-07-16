package com.tianhong.dao.user;

import java.util.List;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.user.User;
import com.tianhong.page.Page;

public interface UserMapper extends BaseMapper<User> {

	List<User> selectAllUsers() throws Exception;

	List<User> selectPageUsers(Page page) throws Exception;

	int selectCount(Page page) throws Exception;
}