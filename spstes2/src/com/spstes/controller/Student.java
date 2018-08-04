package com.spstes.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;

import com.spstes.model.ExamineeInfo;
import com.spstes.model.Major;
import com.spstes.model.PreparedCourse;
import com.spstes.model.PreparedMajor;
import com.spstes.model.TestPlace;
import com.spstes.model.TestTime;
import com.spstes.service.ExamineeService;
import com.spstes.service.MajorService;
import com.spstes.service.PassengerService;
import com.spstes.service.TestPlaceService;
import com.spstes.service.TestTimeService;

@Controller
@Scope("prototype")
@RequestMapping("/student")
public class Student {
	@Autowired
	TestTimeService testTimeService;
	@Autowired
	MajorService majorService;
	@Autowired
	TestPlaceService testPlaceService;
	@Autowired
	ExamineeService examineeService;
	@Autowired
	PassengerService passengerservice;

	@RequestMapping("/enroll")
	public ModelAndView enroll(HttpServletRequest request, HttpServletResponse response) {
		Integer welcome = Integer.valueOf(request.getParameter("welcome"));
		if (welcome == 1) {
			ModelAndView model = new ModelAndView();
			String name = "admin";
			TestTime examinfo = testTimeService.offerExamInfo();
			List<Major> majors = majorService.offerAllMajor();
			List<TestPlace> testplaces = testPlaceService.offerAllTestPlace();
			model.addObject("name", name);
			model.addObject("examinfos", examinfo);
			model.addObject("majors", majors);
			model.addObject("testplaces", testplaces);
			model.setView("");
			return model;
		} else {
			ExamineeInfo examineeInfo = new ExamineeInfo();
			Integer useraccount = Integer.valueOf(request.getParameter("useraccountid"));
			Integer registID = Integer.valueOf(request.getParameter("registIDid"));
			Integer major = Integer.valueOf(request.getParameter("majorid"));
			Integer address = Integer.valueOf(request.getParameter("addressid"));
			examineeInfo.setExa_num(registID);
			examineeInfo.setExa_majorID(major);
			examineeInfo.setInfo_ID(useraccount);
			examineeInfo.setTex_exaID(address);
			examineeInfo.setExa_stuID(null);
			examineeService.addExam(examineeInfo);
			return null;
		}
	}

	@RequestMapping("/search")
	public ModelAndView searchExamInfo(HttpServletRequest request, HttpServletResponse response) {
		Integer type = Integer.valueOf(request.getParameter("type"));
		if (type == 1) {
			String zhunkaoID = request.getParameter("zhunkaoID");
			return null;
		} else if (type == 2) {
			String kechengID = request.getParameter("kechengID");
			List<PreparedCourse> courses = passengerservice.searchCourse();
			ModelAndView model = new ModelAndView();
			model.addObject("courses", courses);
			model.setView("/WEB-INF/jsp/Enroll.jsp");
			return model;
		} else {
			String zhuanyeID = request.getParameter("zhuanyeID");
			List<PreparedMajor> majors = passengerservice.searchProfession();
			ModelAndView model = new ModelAndView();
			model.addObject("majors", majors);
			model.setView("/WEB-INF/jsp/Enroll.jsp");
			return model;
		}
	}
}
