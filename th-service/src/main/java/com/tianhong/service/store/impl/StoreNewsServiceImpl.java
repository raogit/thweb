/**  
 * @Title: StoreNewsServiceImpl.java
 * @Package com.tianhong.service.store.impl
 * @Description: 描述
 * @author xing
 * @date 2016年9月19日 上午9:59:37
 */
package com.tianhong.service.store.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.constant.CommonConstant;
import com.tianhong.dao.store.StoreNewsMapper;
import com.tianhong.domain.store.StoreNews;
import com.tianhong.domain.user.User;
import com.tianhong.service.store.StoreNewsService;
import com.tianhong.utils.DateUtils;

/**
 * ClassName: StoreNewsServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年9月19日 上午9:59:37
 */
@Service("storeNewsService")
@Transactional
public class StoreNewsServiceImpl implements StoreNewsService {

	@Autowired
	private StoreNewsMapper storeNewsMapper;

	public int deleteByPrimaryKey(Integer id) throws Exception {
		return storeNewsMapper.deleteByPrimaryKey(id);
	}

	public StoreNews insertSelective(StoreNews storeNews) throws Exception {
		storeNewsMapper.insertSelective(storeNews);
		return storeNews;
	}

	public StoreNews saveOrUpdate(StoreNews storeNews, User user) throws Exception {
		if (storeNews != null && storeNews.getId() > 0) {
			StoreNews news = storeNewsMapper.selectByPrimaryKey(storeNews.getId());
			news.setTitle(storeNews.getTitle());
			news.setContent(storeNews.getContent());
			news.setStartTime(storeNews.getStartTime());
			news.setEndTime(storeNews.getEndTime());
			news.setUpdateId(user.getId());
			news.setUpdateTime(new Date());
			storeNewsMapper.updateByPrimaryKeySelective(news);
		} else {
			storeNews.setIsDeleted(false);
			storeNews.setCreateId(user.getId());
			storeNews.setCreateTime(new Date());
			storeNewsMapper.insertSelective(storeNews);
		}
		return storeNews;
	}

	public StoreNews getByPrimaryKey(Integer id) throws Exception {
		StoreNews storeNews = storeNewsMapper.selectByPrimaryKey(id);
		storeNews.setStartTimeStr(DateUtils.parseString(storeNews.getStartTime(), CommonConstant.YYYY_MM_dd_HH_mm_ss));
		storeNews.setEndTimeStr(DateUtils.parseString(storeNews.getEndTime(), CommonConstant.YYYY_MM_dd_HH_mm_ss));
		return storeNews;
	}

	public int updateByPrimaryKeySelective(StoreNews storeNews) throws Exception {
		return storeNewsMapper.updateByPrimaryKeySelective(storeNews);
	}

	public StoreNews getPage(StoreNews storeNews) throws Exception {
		List<StoreNews> page = storeNewsMapper.page(storeNews);
		int count = storeNewsMapper.count(storeNews);
		storeNews.setObj(page);
		storeNews.setTotalRow(count);
		return storeNews;
	}

	public List<StoreNews> getList(StoreNews storeNews) throws Exception {
		List<StoreNews> list = storeNewsMapper.list(storeNews);
		if (!CollectionUtils.isEmpty(list)) {
			for (StoreNews news : list) {
				news.setStartTimeStr(DateUtils.parseString(news.getStartTime(), CommonConstant.YYYY_MM_dd_HH_mm_ss));
				news.setEndTimeStr(DateUtils.parseString(news.getEndTime(), CommonConstant.YYYY_MM_dd_HH_mm_ss));
			}
		}
		return list;
	}

}
