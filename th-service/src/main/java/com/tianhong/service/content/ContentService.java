/**  
 * @Title: ContentService.java
 * @Package com.tianhong.service.Content
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午11:13:41
 */
package com.tianhong.service.content;

import java.util.List;

import com.tianhong.domain.content.Content;
import com.tianhong.domain.user.User;

/**
 * ClassName: ContentService
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午11:13:41
 */
public interface ContentService {

	boolean deleteByPrimaryKey(Integer id, User user) throws Exception;

	Content getByPrimaryKey(Integer id) throws Exception;

	Content insertSelective(Content Content) throws Exception;

	int updateByPrimaryKeySelective(Content Content) throws Exception;

	Content getByMenuId(int menuId) throws Exception;

	Content insertSelective(int menuId, String title, String content, String path, User user) throws Exception;

	List<Content> insertSelective(int menuId, String title, String content, List<String> paths, User user)
			throws Exception;

	List<Content> findPage(Content Content) throws Exception;

	int getCount(Content Content) throws Exception;
}
