package com.spstes.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spstes.model.PreparedCourse;
import com.spstes.model.PreparedMajor;
import com.spstes.service.PassengerService;

@Controller
public class Passenger {

	@Autowired
	PassengerService passengerservice;

	@RequestMapping("/passenger")
	public ModelAndView searchProfessionAndCourse() {
		ArrayList<PreparedMajor> majors = passengerservice.searchProfession();
		ArrayList<PreparedCourse> courses = passengerservice.searchCourse();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("majors", majors);
		modelAndView.addObject("courses", courses);
		modelAndView.setViewName("passenger");
		return modelAndView;
	}
}
