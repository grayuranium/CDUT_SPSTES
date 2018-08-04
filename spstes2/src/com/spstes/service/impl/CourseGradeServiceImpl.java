package com.spstes.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.spstes.dao.CourseGradeDao;
import com.spstes.model.CourseGrade;
import com.spstes.service.CourseGradeService;

public class CourseGradeServiceImpl implements CourseGradeService {
	@Autowired
	CourseGradeDao coursegradedao;

	@Override
	public ArrayList<CourseGrade> offerAllCourses() {
		// TODO Auto-generated method stub
		return coursegradedao.getAllCourseGradeByUserId(null);
	}

	@Override
	public void modifyCourseGradeById(Integer id, Double grade) {
		// TODO Auto-generated method stub
		coursegradedao.updateCourseGradeById(id, grade);
	}

}
