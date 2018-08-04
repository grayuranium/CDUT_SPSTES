package com.spstes.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.spstes.dao.CourseInMajorDao;
import com.spstes.model.CourseInMajor;
import com.spstes.service.CourseInMajorService;

public class CourseInMajorServiceImpl implements CourseInMajorService {
	@Autowired
	CourseInMajorDao courseinmajordao;

	@Override
	public ArrayList<CourseInMajor> offerCourseInMajorById(Integer id) {
		// TODO Auto-generated method stub
		return courseinmajordao.findCourseByMajorID(id);
	}

	@Override
	public void addCourse(CourseInMajor cInMajor) {
		// TODO Auto-generated method stub
		courseinmajordao.addCourse(cInMajor);
	}

	@Override
	public void modifyCourse(CourseInMajor cInMajor) {
		// TODO Auto-generated method stub
		courseinmajordao.updateCourseByInstance(cInMajor);
	}

	@Override
	public void deleteCourse(Integer courseid) {
		// TODO Auto-generated method stub
		courseinmajordao.deleteCourseByCourseTypeId(courseid);
	}

}
