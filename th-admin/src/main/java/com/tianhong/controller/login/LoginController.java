/**
 * 
 */
package com.tianhong.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Administrator
 *
 */
@Controller
public class LoginController {

	@RequestMapping(value="/login")
	public Object login(HttpServletRequest request,HttpServletResponse response){
		return "login";
	}
}