/**  
 * @Title: UploadController.java
 * @Package com.tianhong.controller.upload
 * @Description: 描述
 * @author xing
 * @date 2016年7月20日 下午4:50:03
 */
package com.tianhong.controller.upload;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;
import com.tianhong.constant.CommonConstant;
import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.user.User;
import com.tianhong.model.Result;
import com.tianhong.service.culture.CultureService;
import com.tianhong.service.picture.PictureService;
import com.tianhong.utils.AssertUtils;
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
public class UploadController extends BaseController {

	private static final Log log = LogFactory.getLog(UploadController.class);

	@Autowired
	private PictureService pictureService;
	@Autowired
	private CultureService cultureService;

	@RequestMapping(value = "/file")
	@ResponseBody
	public Object file(@RequestParam("fileId") MultipartFile[] file, @RequestParam("menuId") int menuId,
			HttpServletRequest request, ModelMap model) {
		try {
			User user = getCurrentUser(request);
			AssertUtils.isTrue(file[0].getSize() > 0, "文件不能为空");
			request.setCharacterEncoding(CommonConstant.UTF_8);
			String path = FileToolUtils.getPathMkdir(request.getSession().getServletContext().getRealPath("/"),
					CommonConstant.UPLOAD_FILE_PATH);
			List<String> paths = new ArrayList<String>();
			for (MultipartFile f : file) {
				String fileName = FileToolUtils.saveFile(f, path);
				paths.add(fileName);
			}
			cultureService.insertSelective(menuId, file[0].getOriginalFilename(), "", paths, user);
			return true;
		} catch (Exception e) {
			log.error("", e);
		}
		return false;
	}

	@RequestMapping(value = "/image/rich")
	@ResponseBody
	public Object imageRich(@RequestParam MultipartFile[] file, HttpServletRequest request, ModelMap model) {
		Result result = new Result();
		JSONObject json = new JSONObject();
		try {
			AssertUtils.isTrue(file[0].getSize() > 0, "文件不能为空");
			request.setCharacterEncoding(CommonConstant.UTF_8);
			String path = FileToolUtils.getPathMkdir(request.getSession().getServletContext().getRealPath("/"),
					CommonConstant.UPLOAD_IMG_PATH);
			String fileName = FileToolUtils.saveImage(file[0], path);

			String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath();
			log.info("上传图片路径:" + path + fileName);
			json.put("link", url + "/download/png?fileName=" + fileName);
			return json;
		} catch (Exception e) {
			log.error("", e);
			result.setStatus(false);
			result.setObj(e.getMessage());
		}
		return result;
	}

	@RequestMapping(value = "/picture")
	@ResponseBody
	public Object picture(@RequestParam("fileId") MultipartFile[] file, HttpServletRequest request, ModelMap model) {

		try {
			AssertUtils.isTrue(file[0].getSize() > 0, "文件不能为空");
			User user = getCurrentUser(request);
			int menuId = Integer.parseInt(request.getParameter("menuId"));
			byte type = Byte.parseByte(request.getParameter("type"));
			request.setCharacterEncoding(CommonConstant.UTF_8);
			String path = FileToolUtils.getPathMkdir(request.getSession().getServletContext().getRealPath("/"),
					CommonConstant.UPLOAD_IMG_PATH);
			String fileName = FileToolUtils.saveImage(file[0], path);
			pictureService.insertSelective(menuId, "", "", type, fileName, user);
			return true;
		} catch (Exception e) {
			log.error("", e);

		}
		return false;
	}
}
