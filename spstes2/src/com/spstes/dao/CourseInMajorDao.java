package com.spstes.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.spstes.model.CourseInMajor;

public interface CourseInMajorDao {

	public int getInstanceNum(@Param("majorID") Integer majorID);

	// 如果majorID为null，那么查询所有专业课程
	public ArrayList<CourseInMajor> findCourseByMajorID(@Param("majorID") Integer majorID);

	public ArrayList<CourseInMajor> findLimitedCourseByMajorID(@Param("majorID") Integer majorID,
			@Param("fromIndex") int fromIndex, @Param("amount") int amount);

	public int updateCourseByInstance(CourseInMajor courseInMajor);

	public int addCourse(CourseInMajor courseInMajor);

	public int deleteCourseByCourseTypeId(Integer courseTypeId);
}
