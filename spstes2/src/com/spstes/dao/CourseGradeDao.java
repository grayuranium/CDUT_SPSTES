package com.spstes.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.spstes.model.CourseGrade;

public interface CourseGradeDao {

	// 如果输入参数为不为null，获取指定用户的所有课程成绩，并按照考次排序；
	// 反之，如果输入参数为null，则获取所有用户的课程成绩，并按照考次排序
	public ArrayList<CourseGrade> getAllCourseGradeByUserId(@Param("userID") Integer userID);

	public int updateCourseGradeByInstance(CourseGrade courseGrade);
}
