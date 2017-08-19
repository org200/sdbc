package com.sdbc.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class SafeIeIntercepter implements HandlerInterceptor {


	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws Exception {
		HttpSession session = req.getSession(true);
		// 从session 里面获取用户名的信息
		String obj = (String) session.getAttribute("username");
		// 判断如果没有取到用户信息，就跳转到登陆页面，提示用户进行登陆
//		System.out.println("11111111111111111"+obj);
		if (obj == null || "".equals(obj.toString())) {
			res.sendRedirect("../login/indexfilter");
//			 java.io.PrintWriter out = res.getWriter();  
//			    out.println("<html>");  
//			    out.println("<script>");
//			    out.println("window.open('/opmanager/index.jsp','_top')");  
//			    out.println("</script>");  
//			    out.println("</html>");
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse res, Object arg2, ModelAndView arg3) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest req, HttpServletResponse res, Object arg2, Exception arg3) throws Exception {
	}

}
