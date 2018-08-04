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
		ModelAndView modelAndView = new ModelAndView();

		ArrayList<PreparedMajor> majors = passengerservice.searchProfession();
		ArrayList<PreparedCourse> courses = passengerservice.searchCourse();
		modelAndView.addObject("major", majors.get(0));
		modelAndView.addObject("courses", courses);

		ArrayList<String> cities = new ArrayList<String>();
		cities.add("北京");
		cities.add("上海");
		cities.add("广州");
		cities.add("深圳");
		cities.add("成都");

		modelAndView.addObject("cities", cities);

		modelAndView.setViewName("passenger");
		return modelAndView;

		// model.addAttribute("cities", cities);
		// return "index";
	}
}
