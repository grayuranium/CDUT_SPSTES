package com.spstes.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.spstes.dao.CourseDao;
import com.spstes.model.Course;
import com.spstes.service.CourseService;

public class CourseServiceImpl implements CourseService {
	@Autowired
	CourseDao coursedao;

	@Override
	public ArrayList<Course> offerAllCourse() {
		// TODO Auto-generated method stub
		return coursedao.getCourseByType(null);
	}

	@Override
	public ArrayList<Course> offerCourseByType(String type) {
		// TODO Auto-generated method stub
		return coursedao.getCourseByType(type);
	}

	@Override
	public void addCourses(Course course) {
		// TODO Auto-generated method stub
		coursedao.addCourse(course);
	}

	@Override
	public void freezeCourseById(Integer id, String freeze) {
		// TODO Auto-generated method stub
		coursedao.freezeCourseById(id, freeze);
	}

	@Override
	public void updateCreditById(Integer id, Double credit) {
		// TODO Auto-generated method stub
		coursedao.updateCourseCreditById(id, credit);
	}

}
