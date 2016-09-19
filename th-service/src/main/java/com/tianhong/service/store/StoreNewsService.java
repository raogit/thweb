/**  
 * @Title: StoreNewsService.java
 * @Package com.tianhong.service.store
 * @Description: 描述
 * @author xing
 * @date 2016年9月19日 上午9:58:29
 */
package com.tianhong.service.store;

import java.util.List;

import com.tianhong.domain.store.StoreNews;
import com.tianhong.domain.user.User;

/**
 * ClassName: StoreNewsService
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年9月19日 上午9:58:29
 */
public interface StoreNewsService {

	int deleteByPrimaryKey(Integer id) throws Exception;

	StoreNews insertSelective(StoreNews storeNews) throws Exception;

	StoreNews saveOrUpdate(StoreNews storeNews, User user) throws Exception;

	StoreNews getByPrimaryKey(Integer id) throws Exception;

	int updateByPrimaryKeySelective(StoreNews storeNews) throws Exception;

	StoreNews getPage(StoreNews storeNews) throws Exception;

	List<StoreNews> getList(StoreNews storeNews) throws Exception;
}
