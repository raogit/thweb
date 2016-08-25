/**  
 * @Title: MarketNewsService.java
 * @Package com.tianhong.service.MarketNews
 * @Description: 描述
 * @author xing
 * @date 2016年8月25日 上午9:59:34
 */
package com.tianhong.service.market;

import java.util.List;

import com.tianhong.domain.market.MarketNews;

/**
 * ClassName: MarketNewsService
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月25日 上午9:59:34
 */
public interface MarketNewsService {

	MarketNews page(MarketNews marketNews) throws Exception;

	int count(MarketNews marketNews) throws Exception;

	List<MarketNews> list(MarketNews marketNews) throws Exception;

	MarketNews saveOrUpdate(MarketNews marketNews) throws Exception;

	boolean delete(int id) throws Exception;

	int updateByPrimaryKeySelective(MarketNews marketNews) throws Exception;

	MarketNews getByPrimaryKey(int id) throws Exception;

	MarketNews getByPrimaryKeyWithBLOBs(Integer id) throws Exception;
}
