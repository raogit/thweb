/**  
 * @Title: PictureController.java
 * @Package com.tianhong.controller.picture
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午10:43:51
 */
package com.tianhong.controller.picture;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tianhong.controller.base.BaseController;

/**
 * ClassName: PictureController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年7月21日 上午10:43:51
 */
@Controller
@RequestMapping(value = "/picture")
public class PictureController extends BaseController {

	private static final Log log = LogFactory.getLog(PictureController.class);

}
