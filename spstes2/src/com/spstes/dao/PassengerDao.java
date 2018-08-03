package com.spstes.dao;

import java.util.ArrayList;

import com.spstes.model.PreparedCourse;
import com.spstes.model.PreparedMajor;

public interface PassengerDao {

	public ArrayList<PreparedMajor> getPreparedMajor();

	public ArrayList<PreparedCourse> getPreparedCourse();

}
