package com.tianhong.service.recruit;

import java.util.List;

import com.tianhong.domain.recruit.RecruitJob;

/**
 * 职位接口
 * @author sky
 *
 */
public interface RecruitJobService {
	/**
	 * 职位搜索（关键词、工作地点、职位分类）
	 * @param jobName 关键词  %like%
	 * @param area 工作地点
	 * @param jobCategory 职位分类
	 * @return
	 */
	public List<RecruitJob> searchJob(String jobName,String area,String jobCategory);
	
	/**
	 * 查询更多职位
	 * @return
	 */
	public List<RecruitJob> searchMoreJob();
	
	/**
	 * 查询最新职位
	 * @param limit 职位个数
	 * @recuitType 招聘类型：校招，社招
	 * @return
	 */
	public List<RecruitJob> searchLastJob(int limit,String recuitType);
	
	/**
	 * 添加职位
	 * @param recruitJob
	 */
	public void insert(RecruitJob recruitJob);
	
	/**
	 * 添加职位
	 * @param recruitJob
	 */
	public void update(RecruitJob recruitJob);
	
	/**
	 * 添加职位
	 * @param recruitJob
	 */
	public void delete(RecruitJob recruitJob);
}
