package com.tianhong.service.recruit;

import com.tianhong.domain.recruit.RecruitUser;

/**
 * 招聘用户接口
 * @author sky
 *
 */
public interface RecruitUserService {
	/**
	 * 用户注册
	 * @param recruitUser
	 */
	public void register(RecruitUser recruitUser);
	
	/**
	 * 修改密码
	 * @param id
	 * @param oldPassword
	 * @param newPassword
	 */
	public String changePassword(Integer id,String oldPassword,String newPassword);
	
	/**
	 * 登录
	 * @param userName
	 * @param password
	 */
	public Boolean checkIn(String userName,String password);
	
	/**
	 * 重置密码
	 * @param id
	 * @return
	 */
	public String resetPassword(Integer id);
	
}
