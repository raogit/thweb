/**  
 * @Title: MarketService.java
 * @Package com.tianhong.service.market
 * @Description: 描述
 * @author xing
 * @date 2016年8月25日 上午9:25:06
 */
package com.tianhong.service.market;

import java.util.List;

import com.tianhong.domain.market.Market;
import com.tianhong.domain.user.User;

/**
 * ClassName: MarketService
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月25日 上午9:25:06
 */
public interface MarketService {

	Market page(Market market) throws Exception;

	int count(Market market) throws Exception;

	List<Market> list(Market market) throws Exception;

	Market saveOrUpdate(Market market, User user) throws Exception;

	boolean delete(int id) throws Exception;

	int updateByPrimaryKeySelective(Market market) throws Exception;

	Market getByPrimaryKey(int id) throws Exception;

	Market getByPrimaryKeyWithBLOBs(Integer id) throws Exception;
}
