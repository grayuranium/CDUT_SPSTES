package com.spstes.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spstes.dao.CourseGradeDao;
import com.spstes.model.CourseGrade;
import com.spstes.service.CourseGradeService;

@Service
public class CourseGradeServiceImpl implements CourseGradeService {
	@Autowired
	CourseGradeDao coursegradedao;

	@Override
	public ArrayList<CourseGrade> offerAllCourses(Integer userID) {
		return coursegradedao.getAllCourseGradeByUserId(userID);
	}

	@Override
	public void modifyCourseGradeById(Integer id, Double grade) {
		coursegradedao.updateCourseGradeById(id, grade);
	}

}
