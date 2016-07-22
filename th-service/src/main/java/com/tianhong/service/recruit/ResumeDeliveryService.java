package com.tianhong.service.recruit;

import java.util.List;

import com.tianhong.domain.recruit.ResumeDelivery;

/**
 * 简历投递接口
 * @author sky
 *
 */
public interface ResumeDeliveryService {
	/**
	 * 简历投递查询
	 * @return
	 */
	public List<ResumeDelivery> selectByStatus(String status);
	/**
	 * 删除
	 * @param id
	 */
	public void delete(Integer id);
	/**
	 * 更新
	 * @param resumeDelivery
	 */
	public void update(ResumeDelivery resumeDelivery);
	/**
	 * 添加
	 * @param resumeDelivery
	 */
	public void insert(ResumeDelivery resumeDelivery);
}
