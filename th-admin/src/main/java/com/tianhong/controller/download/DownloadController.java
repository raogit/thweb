/**
 * 
 */
package com.tianhong.controller.download;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianhong.constant.CommonConstant;
import com.tianhong.utils.FileToolUtils;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/download")
public class DownloadController {

	private static final Log log = LogFactory.getLog(DownloadController.class);

	@RequestMapping(value = "/png")
	@ResponseBody
	public Object png(@RequestParam("fileName") String fileName, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			request.setCharacterEncoding(CommonConstant.UTF_8);
			String path = FileToolUtils.getPathMkdir(request.getSession().getServletContext().getRealPath("/"),
					CommonConstant.UPLOAD_IMG_PATH);
			FileToolUtils.downLoad(response, path + fileName, false);
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return null;
	}

	@RequestMapping(value = "/file")
	@ResponseBody
	public Object file(@RequestParam("path") String path, HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding(CommonConstant.UTF_8);
			FileToolUtils.downLoad(response, path, false);
		} catch (Exception e) {
			log.error("", e);
		}
		return null;
	}

	@RequestMapping(value = "/pdf")
	@ResponseBody
	public Object pdf(@RequestParam("fileName") String fileName, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			request.setCharacterEncoding(CommonConstant.UTF_8);
			String path = FileToolUtils.getPathMkdir(request.getSession().getServletContext().getRealPath("/"),
					CommonConstant.UPLOAD_FILE_PATH);
			FileToolUtils.downLoad(response, path + fileName, false);
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return null;
	}
}
