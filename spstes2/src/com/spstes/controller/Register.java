package com.spstes.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spstes.model.UserInfo;
import com.spstes.service.RegisterService;

@Controller
@RequestMapping("/reg")
public class Register {
	@Autowired
	RegisterService registerService;

	// 验证用户名是否重复，Ajax传输数据，如果数据库中存在用户名，返回no；不存在则返回yes。
	@RequestMapping("/user_valid")
	public void userValid(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String login_name = request.getParameter("loginname");
		// 可能请求中根本没有loginname参数
		if (null == login_name)
			response.getWriter().write("no");
		else {
			UserInfo user = registerService.findUserByAccount(login_name);
			if (null == user)
				response.getWriter().write("yes");
			else
				response.getWriter().write("no");
		}
	}

	// 进行用户验证并注册，注册成功返回yes；注册失败返回false。
	@RequestMapping("/user_reg")
	public void userReg(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 获取用户信息
		System.out.println("有请求到来...");
		String IDcard = request.getParameter("IDcard");
		String user_name = request.getParameter("Lname");
		String login_name = request.getParameter("loginname");
		String user_paw = request.getParameter("Lpassword");
		String user_sex = request.getParameter("gender"); // 隐藏域传值
		String telphone = request.getParameter("tel");

		UserInfo user = new UserInfo();
		user.setEdu_standard("未知");
		user.setIDcard(IDcard);
		user.setLogin_name(login_name);
		user.setTelphone(telphone);
		// user.setUser_name(registerService.ISO2UTF8(user_name));
		user.setUser_name(user_name);
		user.setUser_paw(user_paw);
		// user.setUser_sex(registerService.ISO2UTF8(user_sex));
		user.setUser_sex(user_sex);

		if (registerService.userValidation(user)) {
			// 用户信息通过验证，则插入记录到数据库
			int num = registerService.addUser(user);
			if (num == 1)
				response.getWriter().write("yes");
			else
				response.getWriter().write("no");
		} else // 用户信息没有通过验证
			response.getWriter().write("no");
	}

}
