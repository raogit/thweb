/**
 * 
 */
package com.tianhong.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;

/**
 * 
 * ClassName: SessionFilter
 * 
 * @Description: 描述
 * @author raowenxing
 * @date 2016-4-21 下午6:59:21
 */
@Component("sessionFilter")
public class SessionFilter implements Filter {

	// 忽略路径
	private static final String[] IGNORE_URI = { "/login.jsp", "/login", "/verify/verifyCode", "/loginconfirm",
			"/logout", "/activex/DongleOCX.exe" };

	// 忽略后缀
	private static final String[] SUFFIXS = { ".js", ".css", ".cur", ".jpg", ".gif", ".png", ".ico", ".swf", ".cab",
			".cvs", "xl", ".html" };

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		boolean flag = false;
		String url = request.getRequestURL().toString();
		String path = ((HttpServletRequest) request).getServletPath();

		for (String s : IGNORE_URI) {
			if (url.contains(s)) {
				flag = true;
				break;
			}
		}
		if (!flag) {
			for (String suffix : SUFFIXS) {
				if (path.endsWith(suffix)) {
					flag = true;
					break;
				}
			}
		}
		chain.doFilter(request, response);
		// if (request.getSession().getAttribute(UserConstant.USER) != null) {
		// if (!flag) {
		// response.sendRedirect(request.getScheme() + "://" +
		// request.getServerName() + ":"
		// + request.getServerPort() + request.getContextPath() + "/menu/menu");
		// return;
		// }
		// chain.doFilter(request, response);
		// } else {
		// if (!flag) {
		// response.sendRedirect(request.getScheme() + "://" +
		// request.getServerName() + ":"
		// + request.getServerPort() + request.getContextPath() + "/login");
		// } else {
		// chain.doFilter(request, response);
		// }
		// }

	}

	public void destroy() {
		// TODO Auto-generated method stub

	}

}
