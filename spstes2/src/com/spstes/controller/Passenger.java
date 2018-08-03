package com.spstes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;

import com.spstes.service.PassengerService;

@Controller
public class Passenger {

	@Autowired
	PassengerService passengerservice;

	@RequestMapping("/passenger")
	public ModelAndView searchProfessionAndCourse() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/WEB-INF/jsp/passenger.jsp");
		return modelAndView;
	}
}
