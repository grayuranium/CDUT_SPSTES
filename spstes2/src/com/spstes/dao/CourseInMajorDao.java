package com.spstes.dao;

import java.util.ArrayList;

import com.spstes.model.CourseInMajor;

public interface CourseInMajorDao {

	// 如果majorID为null，那么查询所有专业课程
	public ArrayList<CourseInMajor> findCourseByMajorID(Integer majorID);

	public int updateCourseByInstance(CourseInMajor courseInMajor);

	public int addCourse(CourseInMajor courseInMajor);

	public int deleteCourseByCourseTypeId(Integer courseTypeId);
}
