/**  
 * @Title: NewsCenterServiceImpl.java
 * @Package com.tianhong.service.newscenter
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午3:05:19
 */
package com.tianhong.service.newscenter.impl;

import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.constant.CommonConstant;
import com.tianhong.dao.newscenter.NewsCenterMapper;
import com.tianhong.domain.newscenter.NewsCenter;
import com.tianhong.domain.user.User;
import com.tianhong.service.newscenter.NewsCenterService;
import com.tianhong.utils.DateUtils;

/**
 * ClassName: NewsCenterServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午3:05:19
 */
@Service("newsCenterService")
@Transactional
public class NewsCenterServiceImpl implements NewsCenterService {

	@Autowired
	private NewsCenterMapper newsCenterMapper;

	public int deleteByPrimaryKey(Integer id) throws Exception {
		return newsCenterMapper.deleteByPrimaryKey(id);
	}

	public NewsCenter insertSelective(NewsCenter newsCenter) throws Exception {
		newsCenterMapper.insertSelective(newsCenter);
		return newsCenter;
	}

	public NewsCenter saveOrUpdate(NewsCenter newsCenter, User user) throws Exception {
		if (newsCenter != null && newsCenter.getId() > 0) {
			NewsCenter news = newsCenterMapper.selectByPrimaryKey(newsCenter.getId());
			news.setType(newsCenter.getType());
			news.setTitle(newsCenter.getTitle());
			news.setSource(newsCenter.getSource());
			news.setContent(newsCenter.getContent());
			news.setPicture(newsCenter.getPicture());
			news.setNewsTime(newsCenter.getNewsTime());
			news.setUpdateId(user.getId());
			news.setUpdateTime(new Date());
			newsCenterMapper.updateByPrimaryKeySelective(news);
			return news;
		} else {
			newsCenter.setIsDeleted(false);
			newsCenter.setCreateId(user.getId());
			newsCenter.setCreateTime(new Date());
			newsCenterMapper.insertSelective(newsCenter);
		}
		return newsCenter;
	}

	public NewsCenter getByPrimaryKey(Integer id) throws Exception {
		NewsCenter news = newsCenterMapper.selectByPrimaryKey(id);
		news.setNewsTimeStr(DateUtils.parseString(news.getNewsTime(), CommonConstant.YYYY_MM_dd_NIAN));
		return news;
	}

	public int updateByPrimaryKeySelective(NewsCenter newsCenter) throws Exception {
		return newsCenterMapper.updateByPrimaryKeySelective(newsCenter);
	}

	public NewsCenter getPage(NewsCenter newsCenter) throws Exception {
		List<NewsCenter> page = newsCenterMapper.page(newsCenter);
		if (!CollectionUtils.isEmpty(page)) {
			for (NewsCenter news : page) {
				news.setNewsTimeStr(DateUtils.parseString(news.getNewsTime(), CommonConstant.YYYY_MM_dd_NIAN));
			}
		}
		int count = newsCenterMapper.count(newsCenter);
		newsCenter.setObj(page);
		newsCenter.setTotalRow(count);
		return newsCenter;
	}

	public List<NewsCenter> getList(NewsCenter newsCenter) throws Exception {
		List<NewsCenter> newsList = newsCenterMapper.list(newsCenter);
		if (!CollectionUtils.isEmpty(newsList)) {
			Pattern p_str = Pattern.compile("[\\u4e00-\\u9fa5]+");

			for (NewsCenter news : newsList) {
				news.setNewsTimeStr(DateUtils.parseString(news.getNewsTime(), CommonConstant.YYYY_MM_dd_NIAN));
				char[] c = news.getContent().toCharArray();
				StringBuffer sb = new StringBuffer();
				for (int i = 0; i < c.length; i++) {
					Matcher m = p_str.matcher(String.valueOf(c[i]));
					if (m.find() && m.group(0).equals(String.valueOf(c[i]))) {
						sb.append(String.valueOf(c[i]));
					}
				}
				news.setContentShow(sb.toString());
			}
		}
		return newsList;
	}

	public List<NewsCenter> getList(int menuId) throws Exception {
		NewsCenter newsCenter = new NewsCenter();
		newsCenter.setMenuId(menuId);
		return getList(newsCenter);
	}

}
