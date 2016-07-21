package com.tianhong.service.recruit;

import java.util.List;

import com.tianhong.domain.recruit.RecruitResume;
import com.tianhong.domain.recruit.Resume;
/**
 * 简历服务接口
 * @author Administrator
 *
 */
public interface RecruitResumeService {
	/**
	 * 查询简历所有信息
	 * @param userId
	 * @return
	 */
	public List<Resume> queryResumeByUserId(Integer userId);
	/**
	 * 查询简历基本信息
	 * @param userId
	 * @return
	 */
	public List<RecruitResume> queryRecruitResumeByUserId(Integer userId);
	/**
	 * 增加简历基本信息
	 * @param recruitResume
	 */
	public void create(RecruitResume recruitResume);
	/**
	 * 删除简历基本信息
	 * @param id
	 */
	public void delete(Integer id);
	/**
	 * 更新简历基本信息
	 * @param recruitResume
	 */
	public void update(RecruitResume recruitResume);
}
