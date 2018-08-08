package com.spstes.service;

import java.util.ArrayList;

import com.spstes.model.CourseInMajor;

public interface CourseInMajorService {

	public int getInstanceNum(Integer majorID);

	public ArrayList<CourseInMajor> offerCourseInMajorById(Integer id);

	public ArrayList<CourseInMajor> findLimitedCourseByMajorID(Integer id, int fromIndex, int amount);

	public void addCourse(CourseInMajor cInMajor);

	public void modifyCourse(CourseInMajor cInMajor);

	public void deleteCourse(Integer courseid);

}
