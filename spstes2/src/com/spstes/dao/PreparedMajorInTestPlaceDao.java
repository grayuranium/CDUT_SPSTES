package com.spstes.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.spstes.model.PreparedMajorInTestPlace;

public interface PreparedMajorInTestPlaceDao {

	public ArrayList<PreparedMajorInTestPlace> getAll();

	public int deletePreparedMajorInTestPlaceById(@Param("ID") Integer ID);
}
