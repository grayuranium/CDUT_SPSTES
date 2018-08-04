package com.spstes.service;

import java.util.ArrayList;

import com.spstes.model.CourseInMajor;

public interface CourseInMajorService {

	public ArrayList<CourseInMajor> offerCourseInMajorById(Integer id);

	public void addCourse(CourseInMajor cInMajor);

	public void modifyCourse(CourseInMajor cInMajor);

	public void deleteCourse(Integer courseid);

}
