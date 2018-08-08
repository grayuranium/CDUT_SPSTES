package com.spstes.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spstes.model.CourseGrade;
import com.spstes.model.ExamineeInfo;
import com.spstes.model.Major;
import com.spstes.model.PreparedCourse;
import com.spstes.model.PreparedMajor;
import com.spstes.model.TestPlace;
import com.spstes.model.TestTime;
import com.spstes.model.UserInfo;
import com.spstes.service.CourseGradeService;
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
	@Autowired
	CourseGradeService courseGradeService;

	@RequestMapping("/index")
	public ModelAndView studentIndex() {
		ModelAndView model = new ModelAndView();
		model.setViewName("student/index");
		return model;
	}

	@RequestMapping("/right")
	public ModelAndView studentRight() {
		ModelAndView model = new ModelAndView();
		model.setViewName("student/right");
		return model;
	}

	@RequestMapping("/enroll")
	public ModelAndView enroll(HttpServletRequest request, HttpServletResponse response) {
		Integer welcome = Integer.valueOf(request.getParameter("welcome"));
		if (welcome == 1) {
			ModelAndView model = new ModelAndView();
			HttpSession session = request.getSession();
			UserInfo user = (UserInfo) session.getAttribute("user");

			TestTime examinfo = testTimeService.offerExamInfo();
			List<Major> majors = majorService.offerAllMajor();
			List<TestPlace> testplaces = testPlaceService.offerAllTestPlace();
			model.addObject("user", user);
			model.addObject("examinfo", examinfo);
			model.addObject("majors", majors);
			model.addObject("testplaces", testplaces);
			model.setViewName("student/netregist");
			return model;
		} else {
			HttpSession session = request.getSession();
			UserInfo user = (UserInfo) session.getAttribute("user");

			ExamineeInfo examineeInfo = new ExamineeInfo();
			// 考点ID
			Integer tex_exaID = Integer.valueOf(request.getParameter("tex_exaID"));
			// 学生ID
			Integer info_ID = Integer.valueOf(user.getInfo_ID());
			// 专业ID
			Integer exa_majorID = Integer.valueOf(request.getParameter("exa_majorID"));
			// 考次ID
			Integer exa_num = Integer.valueOf(request.getParameter("exa_num"));
			examineeInfo.setExa_num(exa_num);
			examineeInfo.setExa_majorID(exa_majorID);
			examineeInfo.setInfo_ID(info_ID);
			examineeInfo.setTex_exaID(tex_exaID);
			examineeService.addExam(examineeInfo);
			return null;
		}
	}

	@RequestMapping("/search")
	public ModelAndView searchExamInfo(HttpServletRequest request, HttpServletResponse response) {
		Integer type = Integer.valueOf(request.getParameter("type"));
		if (type == 1) {
			HttpSession session = request.getSession();
			UserInfo user = (UserInfo) session.getAttribute("user");
			List<CourseGrade> courseGrades = courseGradeService.offerAllCourses(user.getInfo_ID());
			ModelAndView model = new ModelAndView();
			model.addObject("coursegrades", courseGrades);
			model.setViewName("student/grade_ok");
			return model;
		} else if (type == 2) {
			List<PreparedCourse> courses = passengerservice.searchCourse();
			ModelAndView model = new ModelAndView();
			model.addObject("courses", courses);
			model.setViewName("student/class_ok");
			return model;
		} else {
			List<PreparedMajor> majors = passengerservice.searchProfession();
			ModelAndView model = new ModelAndView();
			model.addObject("majors", majors);
			model.setViewName("student/major_ok");
			return model;
		}
	}
}
