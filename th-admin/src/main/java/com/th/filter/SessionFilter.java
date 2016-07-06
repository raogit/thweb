/**
 * 
 */
package com.th.filter;

import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.mvc.annotation.DefaultAnnotationHandlerMapping;


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

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		chain.doFilter(request, response);
		
	}

	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	
	

}
