/**  
 * @Title: MarketServiceImpl.java
 * @Package com.tianhong.service.market.impl
 * @Description: 描述
 * @author xing
 * @date 2016年8月25日 上午9:28:17
 */
package com.tianhong.service.market.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.market.MarketMapper;
import com.tianhong.domain.market.Market;
import com.tianhong.domain.user.User;
import com.tianhong.service.market.MarketService;

/**
 * ClassName: MarketServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年8月25日 上午9:28:17
 */
@Service("marketService")
@Transactional
public class MarketServiceImpl implements MarketService {

	@Autowired
	private MarketMapper marketMapper;

	public Market page(Market market) throws Exception {
		List<Market> page = marketMapper.page(market);
		int count = marketMapper.count(market);
		market.setObj(page);
		market.setTotalRow(count);
		return market;
	}

	public int count(Market market) throws Exception {
		return marketMapper.count(market);
	}

	public List<Market> list(Market market) throws Exception {
		List<Market> list = marketMapper.list(market);
		return list;
	}

	public Market saveOrUpdate(Market market, User user) throws Exception {
		if (market != null && market.getId() != null) {
			Market m = marketMapper.selectByPrimaryKey(market.getId());
			if (m != null) {
				market.setUpdateId(user.getId());
				market.setUpdateTime(new Date());
				marketMapper.updateByPrimaryKeySelective(market);
			} else {
				market.setCreateId(user.getId());
				market.setCreateTime(new Date());
				marketMapper.insertSelective(market);
			}
		} else {
			market.setCreateId(user.getId());
			market.setCreateTime(new Date());
			marketMapper.insertSelective(market);
		}
		return market;
	}

	public boolean delete(int id) throws Exception {
		marketMapper.deleteByPrimaryKey(id);
		return true;
	}

	public int updateByPrimaryKeySelective(Market market) throws Exception {
		return marketMapper.updateByPrimaryKeySelective(market);
	}

	public Market getByPrimaryKey(int id) throws Exception {
		return marketMapper.selectByPrimaryKey(id);
	}

	public Market getByPrimaryKeyWithBLOBs(Integer id) throws Exception {
		return marketMapper.selectByPrimaryKeyWithBLOBs(id);
	}

	public Market getByName(String name) throws Exception {
		return marketMapper.selectByName(name);
	}

}
