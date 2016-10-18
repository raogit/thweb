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

	public Content insertSelective(Content content) throws Exception {
		contentMapper.insertSelective(content);
		return content;
	}

	public int updateByPrimaryKeySelective(Content content) throws Exception {
		return contentMapper.updateByPrimaryKeySelective(content);
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

	public boolean deleteByPrimaryKey(Integer id) throws Exception {
		// Content Content = contentMapper.selectByPrimaryKey(id);
		// Content.setIsDeleted(true);
		// Content.setUpdateId(user.getId());
		// Content.setUpdateTime(new Date());
		// contentMapper.updateByPrimaryKeySelective(Content);
		contentMapper.deleteByPrimaryKey(id);
		return true;
	}

	public Content getByPrimaryKey(Integer id) throws Exception {
		return contentMapper.selectByPrimaryKey(id);
	}

	public Content page(Content content) throws Exception {
		List<Content> page = contentMapper.page(content);
		int count = contentMapper.count(content);
		content.setObj(page);
		content.setTotalRow(count);
		return content;
	}

	public int count(Content content) throws Exception {
		return contentMapper.count(content);
	}

	public Content save(Content content) throws Exception {
		if (content.getId() != null && content.getId() > 0) {
			Content c = contentMapper.selectByPrimaryKey(content.getId());
			if (c != null) {
				updateByPrimaryKeySelective(content);
			} else {
				insertSelective(content);
			}
		} else {
			insertSelective(content);
		}
		return content;
	}

	public List<Content> list(Content content) throws Exception {
		return contentMapper.list(content);
	}

}
