/**  
 * @Title: DevelopHistoryService.java
 * @Package com.tianhong.service.web
 * @Description: 描述
 * @author xing
 * @date 2016年9月20日 下午3:32:33
 */
package com.tianhong.service.web;

import java.util.List;

import com.tianhong.domain.user.User;
import com.tianhong.domain.web.DevelopHistory;

/**
 * ClassName: DevelopHistoryService
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年9月20日 下午3:32:33
 */
public interface DevelopHistoryService {
	int deleteByPrimaryKey(Integer id) throws Exception;

	DevelopHistory insertSelective(DevelopHistory developHistory) throws Exception;

	DevelopHistory saveOrUpdate(DevelopHistory developHistory, User user) throws Exception;

	DevelopHistory getByPrimaryKey(Integer id) throws Exception;

	int updateByPrimaryKeySelective(DevelopHistory developHistory) throws Exception;

	DevelopHistory getPage(DevelopHistory developHistory) throws Exception;

	List<DevelopHistory> getList(DevelopHistory developHistory) throws Exception;

	List<DevelopHistory> getList(int menuId) throws Exception;

	List<DevelopHistory> getListAwards(int menuId) throws Exception;
}
