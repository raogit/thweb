/**
 * 
 */
package com.tianhong.service.newscenter;

import java.util.List;

import com.tianhong.domain.newscenter.NewsCenter;
import com.tianhong.domain.user.User;

/**
 * @author Administrator
 *
 */
public interface NewsCenterService {

	int deleteByPrimaryKey(Integer id) throws Exception;

	NewsCenter insertSelective(NewsCenter newsCenter) throws Exception;

	NewsCenter saveOrUpdate(NewsCenter newsCenter, User user) throws Exception;

	NewsCenter getByPrimaryKey(Integer id) throws Exception;

	int updateByPrimaryKeySelective(NewsCenter newsCenter) throws Exception;

	NewsCenter getPage(NewsCenter newsCenter) throws Exception;

	List<NewsCenter> getList(NewsCenter newsCenter) throws Exception;

	List<NewsCenter> getList(int menuId) throws Exception;
}
