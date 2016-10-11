/**  
 * @Title: DevelopHistoryServiceImpl.java
 * @Package com.tianhong.service.web.impl
 * @Description: 描述
 * @author xing
 * @date 2016年9月20日 下午3:33:58
 */
package com.tianhong.service.web.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.constant.CommonConstant;
import com.tianhong.dao.web.DevelopHistoryMapper;
import com.tianhong.domain.user.User;
import com.tianhong.domain.web.DevelopHistory;
import com.tianhong.service.web.DevelopHistoryService;
import com.tianhong.utils.DateUtils;

/**
 * ClassName: DevelopHistoryServiceImpl
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年9月20日 下午3:33:58
 */
@Service("developHistoryService")
@Transactional
public class DevelopHistoryServiceImpl implements DevelopHistoryService {

	@Autowired
	private DevelopHistoryMapper developHistoryMapper;

	public int deleteByPrimaryKey(Integer id) throws Exception {
		return developHistoryMapper.deleteByPrimaryKey(id);
	}

	public DevelopHistory insertSelective(DevelopHistory developHistory) throws Exception {
		developHistoryMapper.insertSelective(developHistory);
		return developHistory;
	}

	public DevelopHistory saveOrUpdate(DevelopHistory developHistory, User user) throws Exception {
		if (developHistory != null && developHistory.getId() > 0) {
			DevelopHistory history = developHistoryMapper.selectByPrimaryKey(developHistory.getId());
			if (history != null) {
				history.setTitle(developHistory.getTitle());
				history.setPicture(developHistory.getPicture());
				history.setContent(developHistory.getContent());
				history.setUpdateId(user.getId());
				history.setUpdateTime(new Date());
				history.setBackup1(developHistory.getBackup1());
				history.setBackup2(developHistory.getBackup2());
				history.setEventTime(developHistory.getEventTime());
				developHistoryMapper.updateByPrimaryKeySelective(history);
				return history;
			}
		}
		developHistory.setCreateId(user.getId());
		developHistory.setCreateTime(new Date());
		developHistoryMapper.insertSelective(developHistory);

		return developHistory;
	}

	public DevelopHistory getByPrimaryKey(Integer id) throws Exception {
		DevelopHistory his = developHistoryMapper.selectByPrimaryKey(id);
		his.setCreateTimeStr(DateUtils.parseString(his.getCreateTime(), CommonConstant.YYYY_MM_dd_NIAN));
		return his;
	}

	public int updateByPrimaryKeySelective(DevelopHistory developHistory) throws Exception {
		return developHistoryMapper.updateByPrimaryKeySelective(developHistory);
	}

	public DevelopHistory getPage(DevelopHistory developHistory) throws Exception {
		List<DevelopHistory> page = developHistoryMapper.page(developHistory);
		if (!CollectionUtils.isEmpty(page)) {
			for (DevelopHistory his : page) {
				try {
					his.setEventTimeStr(DateUtils.parseString(his.getEventTime(), CommonConstant.YYYY_MM_dd));
				} catch (Exception e) {
				}
				try {
					his.setCreateTimeStr(DateUtils.parseString(his.getCreateTime(), CommonConstant.YYYY_MM_dd_NIAN));
				} catch (Exception e) {
				}

			}
		}
		int count = developHistoryMapper.count(developHistory);
		developHistory.setObj(page);
		developHistory.setTotalRow(count);
		return developHistory;
	}

	public List<DevelopHistory> getList(DevelopHistory developHistory) throws Exception {
		return developHistoryMapper.list(developHistory);
	}

	public List<DevelopHistory> getList(int menuId) throws Exception {
		DevelopHistory developHistory = new DevelopHistory();
		developHistory.setMenuId(menuId);
		List<DevelopHistory> list = developHistoryMapper.list(developHistory);
		if (!CollectionUtils.isEmpty(list)) {
			for (DevelopHistory his : list) {
				try {
					his.setEventTimeStr(DateUtils.parseString(his.getEventTime(), CommonConstant.YYYY_MM_dd_NIAN));
				} catch (Exception e) {
				}
				try {
					his.setCreateTimeStr(DateUtils.parseString(his.getCreateTime(), CommonConstant.YYYY_MM_dd_NIAN));
				} catch (Exception e) {
				}

			}
		}
		return list;
	}

}
