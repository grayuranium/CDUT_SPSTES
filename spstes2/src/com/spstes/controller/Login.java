package com.spstes.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spstes.model.Admin;
import com.spstes.model.UserInfo;
import com.spstes.service.LoginService;

@Controller
@RequestMapping("/login")
public class Login {
	@Autowired
	LoginService loginService;

	// 管理员（考试院）登陆
	@RequestMapping("/admin")
	public void adminLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String login_name = request.getParameter("username");
		String pwd = request.getParameter("password");
		Admin admin = loginService.findAdminByAccountAndPwd(login_name, pwd);

		if (null == admin)
			response.getWriter().write("no"); // 返回登陆失败
		else {
			HttpSession session = request.getSession(true); // 如果没有session，就创建一个
			session.setAttribute("admin", admin); // 保存管理员信息
			response.getWriter().write("yes"); // 放回登陆成功
		}
	}

	// 普通用户登录
	@RequestMapping("/user")
	public void userLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String login_name = request.getParameter("Sname");
		String pwd = request.getParameter("Password");
		UserInfo user = loginService.findUserByAccountAndPwd(login_name, pwd);

		if (null == user)
			response.getWriter().write("no"); // 返回登陆失败
		else {
			HttpSession session = request.getSession(true); // 如果没有session，就创建一个
			session.setAttribute("user", user); // 保存管理员信息
			response.getWriter().write("yes"); // 放回登陆成功
		}
	}
}
