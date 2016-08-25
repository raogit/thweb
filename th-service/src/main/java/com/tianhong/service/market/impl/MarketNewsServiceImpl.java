/**  
 * @Title: MarketNewsServiceImpl.java
 * @Package com.tianhong.service.market.impl
 * @Description: 描述
 * @author xing
 * @date 2016年8月25日 上午10:00:49
 */
package com.tianhong.service.market.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.market.MarketNewsMapper;
import com.tianhong.domain.market.MarketNews;
import com.tianhong.domain.user.User;
import com.tianhong.service.market.MarketNewsService;

/**
 * ClassName: MarketNewsServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月25日 上午10:00:49
 */
@Service("marketNewsService")
@Transactional
public class MarketNewsServiceImpl implements MarketNewsService {

	@Autowired
	private MarketNewsMapper marketNewsMapper;

	public MarketNews page(MarketNews marketNews) throws Exception {
		List<MarketNews> page = marketNewsMapper.page(marketNews);
		int count = marketNewsMapper.count(marketNews);
		marketNews.setObj(page);
		marketNews.setTotalRow(count);
		return marketNews;
	}

	public int count(MarketNews marketNews) throws Exception {
		return marketNewsMapper.count(marketNews);
	}

	public List<MarketNews> list(MarketNews marketNews) throws Exception {
		return marketNewsMapper.list(marketNews);
	}

	public MarketNews saveOrUpdate(MarketNews marketNews, User user) throws Exception {
		if (marketNews.getId() != null && marketNews.getId() > 0) {
			marketNews.setUpdateId(user.getId());
			marketNews.setUpdateTime(new Date());
			marketNewsMapper.updateByPrimaryKeySelective(marketNews);
		} else {
			marketNews.setCreateId(user.getId());
			marketNews.setCreateTime(new Date());
			marketNewsMapper.insertSelective(marketNews);
		}
		return marketNews;
	}

	public boolean delete(int id) throws Exception {
		marketNewsMapper.deleteByPrimaryKey(id);
		return true;
	}

	public int updateByPrimaryKeySelective(MarketNews marketNews) throws Exception {
		return marketNewsMapper.updateByPrimaryKeySelective(marketNews);
	}

	public MarketNews getByPrimaryKey(int id) throws Exception {
		return marketNewsMapper.selectByPrimaryKey(id);
	}

	public MarketNews getByPrimaryKeyWithBLOBs(Integer id) throws Exception {
		return marketNewsMapper.selectByPrimaryKeyWithBLOBs(id);
	}

	public MarketNews saveOrUpdate(int marketNewsId, int marketId, String fileName, byte type, User user)
			throws Exception {
		MarketNews news = marketNewsMapper.selectByPrimaryKeyWithBLOBs(marketNewsId);
		if (news == null) {
			news = new MarketNews();
			news.setMarketId(marketId);
			news.setPath(fileName);
			news.setType(type);
			news.setCreateId(user.getId());
			news.setCreateTime(new Date());
			marketNewsMapper.insertSelective(news);
		} else {
			news.setMarketId(marketId);
			news.setPath(fileName);
			news.setType(type);
			news.setUpdateId(user.getId());
			news.setUpdateTime(new Date());
			marketNewsMapper.updateByPrimaryKeySelective(news);
		}
		return news;
	}

}
