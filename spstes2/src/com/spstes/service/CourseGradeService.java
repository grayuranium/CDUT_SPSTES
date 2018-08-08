package com.spstes.service;

import java.util.ArrayList;

import com.spstes.model.CourseGrade;

public interface CourseGradeService {
	public ArrayList<CourseGrade> offerAllCourses(Integer userID);

	public void modifyCourseGradeById(Integer id, Double grade);
}
