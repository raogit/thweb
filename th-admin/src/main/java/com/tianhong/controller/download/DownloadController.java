/**
 * 
 */
package com.tianhong.controller.download;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.tianhong.constant.CommonConstant;
import com.tianhong.model.Result;
import com.tianhong.utils.FileToolUtils;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/download")
public class DownloadController {
	@RequestMapping(value = "/png")
	@ResponseBody
	public Object png(@RequestParam("fileName") String fileName, HttpServletRequest request, ModelMap model) {
		Result result = new Result();
		JSONObject json = new JSONObject();
		try {
			request.setCharacterEncoding(CommonConstant.UTF_8);
			String path = FileToolUtils.getPathMkdir(request.getSession().getServletContext().getRealPath("/"),
					"/img/upload");

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
}
