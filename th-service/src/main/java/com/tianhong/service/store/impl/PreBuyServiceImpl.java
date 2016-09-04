/**
 * 
 */
package com.tianhong.service.store.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.constant.CommonConstant;
import com.tianhong.dao.store.PreBuyMapper;
import com.tianhong.domain.store.PreBuy;
import com.tianhong.domain.user.User;
import com.tianhong.service.store.PreBuyService;
import com.tianhong.utils.DateUtils;

/**
 * @author Administrator
 *
 */
@Service("preBuyService")
@Transactional
public class PreBuyServiceImpl implements PreBuyService {

	@Autowired
	private PreBuyMapper preBuyMapper;

	public int deleteByPrimaryKey(Integer id) throws Exception {
		return preBuyMapper.deleteByPrimaryKey(id);
	}

	public PreBuy insertSelective(PreBuy preBuy) throws Exception {
		preBuyMapper.insertSelective(preBuy);
		return preBuy;
	}

	public PreBuy getByPrimaryKey(Integer id) throws Exception {
		return preBuyMapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(PreBuy preBuy) throws Exception {
		return preBuyMapper.updateByPrimaryKeySelective(preBuy);
	}

	public PreBuy getPage(PreBuy preBuy) throws Exception {
		List<PreBuy> page = preBuyMapper.page(preBuy);
		int count = preBuyMapper.count(preBuy);
		preBuy.setObj(page);
		preBuy.setTotalRow(count);
		return preBuy;
	}

	public List<PreBuy> getList(PreBuy preBuy) throws Exception {
		return preBuyMapper.list(preBuy);
	}

	public PreBuy saveOrUpdate(PreBuy preBuy, User user) throws Exception {
		try {
			preBuy.setEndTime(DateUtils.parseDate(preBuy.getCloseDate(), CommonConstant.YYYY_MM_dd));
		} catch (Exception e) {
		}
		if (preBuy != null && preBuy.getId() > 0) {
			PreBuy product = preBuyMapper.selectByPrimaryKey(preBuy.getId());
			if (product != null) {
				product.setName(preBuy.getName());
				product.setEndTime(preBuy.getEndTime());
				product.setWeight(preBuy.getWeight());
				product.setPrice(preBuy.getPrice());
				product.setPicture(preBuy.getPicture());
				product.setUpdateId(user.getId());
				product.setUpdateTime(new Date());
				preBuyMapper.updateByPrimaryKeySelective(product);
				return product;
			}
		}
		preBuy.setCreateId(user.getId());
		preBuy.setCreateTime(new Date());
		preBuyMapper.insertSelective(preBuy);
		return preBuy;
	}

}
