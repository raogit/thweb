package com.tianhong.controller.recruit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.recruit.RecruitJob;
import com.tianhong.service.recruit.RecruitJobService;
@Controller
@RequestMapping("/socialRecruit")
public class SocialRecruitController extends BaseController{
	private static final Log log = LogFactory.getLog(SocialRecruitController.class);
	@Autowired
	private RecruitJobService recruitJobService;
	
	@RequestMapping(value = "/page")
	@ResponseBody
	public Object page(RecruitJob recruitJob,HttpServletRequest request, HttpServletResponse response){
		
		return recruitJobService.searchJob(recruitJob.getJobName(), recruitJob.getArea(), recruitJob.getJobCategory());
	}
}
