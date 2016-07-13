/**  
 * @Title: BaseMapper.java
 * @Package com.tianhong.dao.base
 * @Description: 描述
 * @author xing
 * @date 2016年7月13日 下午4:34:32
 */
package com.tianhong.dao.base;

/**
 * ClassName: BaseMapper 
 * @Description: 描述
 * @author xing
 * @date 2016年7月13日 下午4:34:32
 */
public interface BaseMapper<T> {

	int deleteByPrimaryKey(Integer id) throws Exception;

    T insert(T record) throws Exception;

    T insertSelective(T record) throws Exception;

    T selectByPrimaryKey(Integer id) throws Exception;

    int updateByPrimaryKeySelective(T record) throws Exception;

    int updateByPrimaryKey(T record) throws Exception;
}
