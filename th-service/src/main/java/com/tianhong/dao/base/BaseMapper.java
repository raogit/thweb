/**  
 * @Title: BaseMapper.java
 * @Package com.tianhong.dao.base
 * @Description: 描述
 * @author xing
 * @date 2016年7月13日 下午4:34:32
 */
package com.tianhong.dao.base;

import java.util.List;

/**
 * ClassName: BaseMapper
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月13日 下午4:34:32
 */
public interface BaseMapper<T> {

	int deleteByPrimaryKey(Integer id) throws Exception;

	int insert(T t) throws Exception;

	int insertSelective(T t) throws Exception;

	T selectByPrimaryKey(Integer id) throws Exception;

	int updateByPrimaryKeySelective(T t) throws Exception;

	int updateByPrimaryKey(T t) throws Exception;

	List<T> page(T t) throws Exception;

	int count(T t) throws Exception;

	List<T> list(T t) throws Exception;
}
