package com.tianhong.service.recruit.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.tianhong.dao.recruit.RecruitUserMapper;
import com.tianhong.domain.recruit.RecruitUser;
import com.tianhong.enums.ChangePasswordMsg;
import com.tianhong.service.recruit.RecruitUserService;
import com.tianhong.utils.MD5;
/**
 * 招聘用户服务
 * @author sky
 *
 */
public class RecruitUserServiceImpl implements RecruitUserService {
	
	@Autowired
	private RecruitUserMapper recruitUserMapper;
	
	public void register(RecruitUser recruitUser) {
		recruitUserMapper.insert(recruitUser);

	}

	public String changePassword(Integer id, String oldPassword,String newPassword) {
		if(id==null || oldPassword==null || newPassword==null){
			return ChangePasswordMsg.PARAM_ERROR.getText();
		}
		RecruitUser recruitUser =recruitUserMapper.selectByPrimaryKey(id);
		if(recruitUser == null){
			return ChangePasswordMsg.NOUSER.getText();
		}
		String oldPasswordMD5=MD5.GetMD5Code(oldPassword);
		if(!oldPasswordMD5.equals(recruitUser.getPassword())){
			return ChangePasswordMsg.OLDPWD_FAIL.getText();
		}
		String newPasswordMD5=MD5.GetMD5Code(newPassword);
		recruitUser.setPassword(newPasswordMD5);
		recruitUserMapper.updateByPrimaryKey(recruitUser);
		return ChangePasswordMsg.SUCCESS.getText();
	}

	public Boolean checkIn(String userName, String password) {
		if(userName == null || password == null){
			return Boolean.FALSE;
		}
		String passwordMD5=MD5.GetMD5Code(password);
		int result = recruitUserMapper.selectUser(userName, passwordMD5);
		if(result > 0){
			return Boolean.TRUE;
		}else{
			return Boolean.FALSE;
		}
	}

	public String resetPassword(Integer id) {
		RecruitUser recruitUser =recruitUserMapper.selectByPrimaryKey(id);
		String passwordMD5=MD5.GetMD5Code(String.valueOf(System.currentTimeMillis()));
		String passWord=MD5.GetMD5Code(passwordMD5);
		recruitUser.setPassword(passWord);
		recruitUserMapper.updateByPrimaryKey(recruitUser);
		return passwordMD5;
	}

}
