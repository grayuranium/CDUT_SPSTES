package com.spstes.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spstes.dao.CourseInMajorDao;
import com.spstes.model.CourseInMajor;
import com.spstes.service.CourseInMajorService;

@Service
public class CourseInMajorServiceImpl implements CourseInMajorService {
	@Autowired
	CourseInMajorDao courseinmajordao;

	@Override
	public ArrayList<CourseInMajor> offerCourseInMajorById(Integer id) {
		return courseinmajordao.findCourseByMajorID(id);
	}

	@Override
	public void addCourse(CourseInMajor cInMajor) {
		courseinmajordao.addCourse(cInMajor);
	}

	@Override
	public void modifyCourse(CourseInMajor cInMajor) {
		courseinmajordao.updateCourseByInstance(cInMajor);
	}

	@Override
	public void deleteCourse(Integer courseid) {
		courseinmajordao.deleteCourseByCourseTypeId(courseid);
	}

	@Override
	public ArrayList<CourseInMajor> findLimitedCourseByMajorID(Integer id, int fromIndex, int amount) {
		return courseinmajordao.findLimitedCourseByMajorID(id, fromIndex, amount);
	}

	@Override
	public int getInstanceNum(Integer majorID) {
		return courseinmajordao.getInstanceNum(majorID);
	}

}
