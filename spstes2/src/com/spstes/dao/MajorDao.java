package com.spstes.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.spstes.model.Major;

public interface MajorDao {

	public ArrayList<Major> getMajorByType(@Param("type") String type);

	public int freezeMajorById(@Param("majorID") Integer majorID, @Param("status") String status);

	public int updateMajorCreditById(@Param("majorID") Integer majorID, @Param("credit") Double credit);

	public int updateMajorAnserById(@Param("majorID") Integer majorID, @Param("anser") String anser);

	public int addMajor(@Param("major") Major major);

}
