/**
 * 
 */
package com.tianhong.service.store;

import java.util.List;

import com.tianhong.domain.store.PreBuy;
import com.tianhong.domain.user.User;

/**
 * @author Administrator
 *
 */
public interface PreBuyService {

	int deleteByPrimaryKey(Integer id) throws Exception;

	PreBuy insertSelective(PreBuy preBuy) throws Exception;

	PreBuy saveOrUpdate(PreBuy preBuy, User user) throws Exception;

	PreBuy getByPrimaryKey(Integer id) throws Exception;

	int updateByPrimaryKeySelective(PreBuy preBuy) throws Exception;

	PreBuy getPage(PreBuy preBuy) throws Exception;

	List<PreBuy> getList(PreBuy preBuy) throws Exception;

	List<PreBuy> getList(int categoryId) throws Exception;
}
