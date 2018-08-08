package com.spstes.service;

import java.util.ArrayList;

import com.spstes.model.Course;

public interface CourseService {

	public ArrayList<Course> offerAllCourse();

	public ArrayList<Course> offerCourseByType(String type);

	public void addCourses(Course course);

	public void freezeCourseById(Integer id, String freeze);

	public void updateCreditById(Integer id, Double credit);

}
