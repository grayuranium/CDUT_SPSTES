package com.spstes.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Scope("prototype")
@RequestMapping("/student")
public class Student {

	@RequestMapping("/enroll")
	public void enroll() {

	}

	@RequestMapping("/search")
	public void searchExamInfo() {

	}
}
