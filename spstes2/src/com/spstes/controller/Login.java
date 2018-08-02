package com.spstes.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spstes.service.LoginService;

@Controller
@RequestMapping("/login")
public class Login {
	@Autowired
	LoginService loginService;

	@RequestMapping("/admin_login")
	public void admin_login(HttpServletRequest request, HttpServletResponse response) {
		//
	}
}
