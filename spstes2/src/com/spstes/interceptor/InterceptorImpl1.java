package com.spstes.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class InterceptorImpl1 implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("InterceptorImpl1 : afterCompletion() was called...");
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("InterceptorImpl1 : postHandle() was called...");
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("InterceptorImpl1 : preHandle() was called...");

		System.out.println("request.getRequestURI() : " + request.getRequestURI());
		System.out.println("request.getContextPath() : " + request.getContextPath());
		System.out.println("request.getServletPath() : " + request.getServletPath());

		String path = request.getServletPath();
		String adminReg = "^/admin/.*";
		String studentReg = "^/student/.*";

		HttpSession session = request.getSession(false);

		if (path.matches(adminReg)) { // 访问管理员专属资源
			if (null == session) // 没有登陆
			{
				System.out.println("非法访问：没有登陆，但访问管理员专属资源");
				response.sendRedirect("/spstes2/adminLogin");
				return false;
			}
			if (null == session.getAttribute("admin"))// 角色不是admin
			{
				System.out.println("非法访问：角色不是管理员");
				response.sendRedirect("/spstes2/adminLogin");
				return false;
			}
		}
		if (path.matches(studentReg)) { // 访问学生专属资源
			if (null == session) // 没有登陆
			{
				System.out.println("非法访问：没有登陆，但访问学生专属资源");
				response.sendRedirect("/spstes2/studentLogin");
				return false;
			}
			if (null == session.getAttribute("user"))// 角色不是学生
			{
				System.out.println("非法访问：角色不是学生");
				response.sendRedirect("/spstes2/studentLogin");
				return false;
			}
		}
		return true;
	}
}
