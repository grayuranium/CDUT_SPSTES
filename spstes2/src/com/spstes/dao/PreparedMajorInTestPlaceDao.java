package com.spstes.dao;

import org.apache.ibatis.annotations.Param;

public interface PreparedMajorInTestPlaceDao {

	public int deletePreparedMajorInTestPlaceById(@Param("ID") Integer ID);
}
