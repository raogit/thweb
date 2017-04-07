/**
 * 
 */
package com.tianhong.filter;

import java.io.IOException;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import com.tianhong.constant.CommonConstant;
import com.tianhong.domain.path.BasePath;
import com.tianhong.service.path.BasePathService;

/**
 * 
 * ClassName: SessionFilter
 * 
 * @Description: 描述
 * @author raowenxing
 * @date 2016-4-21 下午6:59:21df
 */
@Component("sessionFilter")
public class SessionFilter implements Filter {

	private static final Log log = LogFactory.getLog(SessionFilter.class);

	// 忽略路径
	private static final String[] IGNORE_URI = { "/login.jsp", "/login", "/verify/verifyCode", "/loginconfirm",
			"/logout", "/activex/DongleOCX.exe", "/web/b2b/client.exe" };

	// 忽略后缀
	private static final String[] SUFFIXS = { ".js", ".css", ".cur", ".jpg", ".gif", ".png", ".ico", ".swf", ".cab",
			".cvs", "xl", ".html" };

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Autowired
	private BasePathService basePathService;

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		boolean flag = false;
		String url = request.getRequestURL().toString();
		String path = ((HttpServletRequest) request).getServletPath();
		if (path.indexOf("passwd") > -1) {
			String ip = request.getRemoteAddr();
			log.info("ip:" + ip + ",path:" + path);
			response.sendRedirect(request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath() + "/web/index");
		} else {
			try {
				String basePath = (String) request.getSession().getAttribute(CommonConstant.PLAT_FORM_BACK);
				if (basePath == null) {
					BasePath base = basePathService.getByFlatForm(CommonConstant.PLAT_FORM_BACK);
					request.getSession().setAttribute(CommonConstant.PLAT_FORM_BACK, base.getBasePath());
				}
			} catch (Exception e) {
				// log.error("", e);
			}

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
			WebApplicationContext wc = WebApplicationContextUtils
					.getRequiredWebApplicationContext(request.getSession().getServletContext());
			RequestMappingHandlerMapping rmhp = wc.getBean(RequestMappingHandlerMapping.class);
			Map<RequestMappingInfo, HandlerMethod> map = rmhp.getHandlerMethods();
			boolean existUrl = false;
			for (RequestMappingInfo info : map.keySet()) {
				String requestUrl = info.getPatternsCondition().toString();
				if (requestUrl.equals("[" + path + "]")) {
					existUrl = true;
					break;
				}
			}
			if (!flag) {
				if (!existUrl) {
					response.sendRedirect(request.getScheme() + "://" + request.getServerName() + ":"
							+ request.getServerPort() + request.getContextPath() + "/web/index");
				} else {
					chain.doFilter(request, response);
				}
			} else {
				chain.doFilter(request, response);
			}
		}

	}

	public void destroy() {
		// TODO Auto-generated method stub

	}

}
