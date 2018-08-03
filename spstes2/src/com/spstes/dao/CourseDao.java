package com.spstes.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.spstes.model.Course;

public interface CourseDao {

	// type 为null则获取所有课程，type为是，获取全国课程；type为否，获取省级课程。
	public ArrayList<Course> getCourseByType(@Param("type") String type);

	public int freezeCourseById(@Param("courseID") Integer CourseID, @Param("status") String status);

	public int updateCourseCreditById(@Param("courseID") Integer courseID, @Param("credit") Double credit);

	// public int update

	public int addCourse(@Param("course") Course course);

}
