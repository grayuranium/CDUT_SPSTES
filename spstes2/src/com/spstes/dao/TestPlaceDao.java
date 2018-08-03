package com.spstes.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.spstes.model.TestPlace;

public interface TestPlaceDao {

	public ArrayList<TestPlace> getAllTestPlace();

	public int freezeTestPlaceById(@Param("exaID") Integer exaID, @Param("status") String status);

	public int addTestPlace(TestPlace testPlace);

}
