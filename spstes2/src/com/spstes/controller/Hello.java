package com.spstes.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spstes.model.UserInfo;
import com.spstes.service.CatService;
import com.spstes.service.LoginService;
import com.spstes.service.RegisterService;

@Controller
public class Hello {

	@Autowired
	CatService catService;
	@Autowired
	LoginService loginService;
	@Autowired
	RegisterService registerService;

	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();

		String login_name = "monkey_king";
		String login_pwd = "monkey_king";
		String IDCard = "511304885801586121";
		UserInfo user = loginService.findUserByAccountAndPwd(login_name, login_pwd);
		System.out.println("findUserByAccountAndPwd() : " + user);
		UserInfo user2 = registerService.findUserByAccount(login_name);
		System.out.println("findUserByAccount() : " + user2);
		UserInfo user3 = registerService.finUserByIDCard(IDCard);
		System.out.println("finUserByIDCard() : " + user3);

		ArrayList<String> cities = new ArrayList<String>();
		cities.add("北京");
		cities.add("上海");
		cities.add("广州");
		cities.add("深圳");
		cities.add("成都");

		mv.addObject("cities", cities);

		mv.setViewName("index");
		return mv;
	}

	// @RequestMapping("/student/index/")
	// public ModelAndView index1() {
	// ModelAndView mv = new ModelAndView();
	// mv.setViewName("student/index");
	// return mv;
	// }
	//
	// @RequestMapping("/student/right")
	// public ModelAndView right() {
	// ModelAndView mv = new ModelAndView();
	// mv.setViewName("student/right");
	// return mv;
	// }

	@RequestMapping("/studentLogin")
	public ModelAndView slogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("student/StudentLogin");
		return mv;
	}

	@RequestMapping("/adminLogin")
	public ModelAndView alogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/AdminLogin");
		return mv;
	}

	// cheng

	@RequestMapping("/admin/index")
	public ModelAndView aindex() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/index");
		return mv;
	}

	@RequestMapping("/admin/kaoci")
	public ModelAndView kaoci() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/kaoci");
		return mv;
	}

	@RequestMapping("/admin/procurma")
	public ModelAndView procurma() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/Procurma");
		return mv;
	}

	@RequestMapping("/admin/proma")
	public ModelAndView proma() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/Proma");
		return mv;
	}

	@RequestMapping("/admin/score")
	public ModelAndView score() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/score");
		return mv;
	}
}
