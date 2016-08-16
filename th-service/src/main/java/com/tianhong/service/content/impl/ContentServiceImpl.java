/**  
 * @Title: ContentServiceImpl.java
 * @Package com.tianhong.service.Content.impl
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午11:17:24
 */
package com.tianhong.service.content.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.content.ContentMapper;
import com.tianhong.domain.content.Content;
import com.tianhong.domain.user.User;
import com.tianhong.service.content.ContentService;

/**
 * ClassName: ContentServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午11:17:24
 */
@Service("contentService")
@Transactional
public class ContentServiceImpl implements ContentService {

	@Autowired
	private ContentMapper contentMapper;

	public Content insertSelective(Content Content) throws Exception {
		contentMapper.insertSelective(Content);
		return Content;
	}

	public int updateByPrimaryKeySelective(Content Content) throws Exception {
		return contentMapper.updateByPrimaryKeySelective(Content);
	}

	public Content getByMenuId(int menuId) throws Exception {
		return contentMapper.selectByMenuId(menuId);
	}

	public Content insertSelective(int menuId, String title, String content, String path, User user) throws Exception {
		Content Content = new Content();
		Content.setMenuId(menuId);
		Content.setTitle(title);
		Content.setContent(content);
		Content.setPath(path);
		Content.setCreateId(user.getId());
		Content.setCreateTime(new Date());
		contentMapper.insertSelective(Content);
		return Content;
	}

	public List<Content> insertSelective(int menuId, String title, String content, List<String> paths, User user)
			throws Exception {
		List<Content> Contents = new ArrayList<Content>();
		for (String path : paths) {
			Content Content = new Content();
			Content.setMenuId(menuId);
			Content.setTitle(title);
			Content.setContent(content);
			Content.setPath(path);
			Content.setCreateId(user.getId());
			Content.setCreateTime(new Date());
			contentMapper.insertSelective(Content);
			Contents.add(Content);
		}
		return Contents;
	}

	public boolean deleteByPrimaryKey(Integer id, User user) throws Exception {
		Content Content = contentMapper.selectByPrimaryKey(id);
		Content.setIsDeleted(true);
		Content.setUpdateId(user.getId());
		Content.setUpdateTime(new Date());
		contentMapper.updateByPrimaryKeySelective(Content);
		return true;
	}

	public Content getByPrimaryKey(Integer id) throws Exception {
		return contentMapper.selectByPrimaryKey(id);
	}

	public List<Content> findPage(Content Content) throws Exception {
		return contentMapper.findPage(Content);
	}

	public int getCount(Content Content) throws Exception {
		return contentMapper.getCount(Content);
	}

}
