/**  
 * @Title: UploadController.java
 * @Package com.tianhong.controller.upload
 * @Description: 描述
 * @author xing
 * @date 2016年7月20日 下午4:50:03
 */
package com.tianhong.controller.upload;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;
import com.tianhong.constant.CommonConstant;
import com.tianhong.model.Result;
import com.tianhong.utils.FileToolUtils;

/**
 * ClassName: UploadController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月20日 下午4:50:03
 */
@Controller
@RequestMapping(value = "/upload")
public class UploadController {

	private static final Log log = LogFactory.getLog(UploadController.class);

	@RequestMapping(value = "/multipartFile")
	@ResponseBody
	public Object multipartFile(@RequestParam MultipartFile[] file, HttpServletRequest request, ModelMap model) {
		Result result = new Result();
		JSONObject json = new JSONObject();
		try {
			request.setCharacterEncoding(CommonConstant.UTF_8);
			String path = FileToolUtils.getPathMkdir(request.getSession().getServletContext().getRealPath("/"),
					"/img/upload");
			String fileName = FileToolUtils.saveFile(file[0], path);
			String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath();
			json.put("link", url + "/img/upload" + fileName);
			return json;
		} catch (Exception e) {
			log.error("", e);
			result.setStatus(false);
			result.setObj(e.getMessage());
		}
		return result;
	}

	@RequestMapping(value = "/file")
	@ResponseBody
	public Object file(@RequestParam MultipartFile[] file, HttpServletRequest request, ModelMap model) {
		Result result = new Result();
		JSONObject json = new JSONObject();
		try {
			request.setCharacterEncoding(CommonConstant.UTF_8);
			String path = request.getSession().getServletContext().getRealPath("/") + "upload/";
			String fileName = FileToolUtils.saveImage(file[0], path);

			String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath();
			log.info("上传图片路径:" + url + "/img/upload/" + fileName);
			json.put("link", url + "/upload/" + fileName);
			return json;
		} catch (Exception e) {
			log.error("", e);
			result.setStatus(false);
			result.setObj(e.getMessage());
		}
		return result;
	}
}
