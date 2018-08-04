package com.spstes.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.spstes.dao.TestPlaceDao;
import com.spstes.model.TestPlace;
import com.spstes.service.TestPlaceService;

public class TestPlaceServiceImpl implements TestPlaceService {
	@Autowired
	TestPlaceDao testplacedao;

	@Override
	public ArrayList<TestPlace> offerAllTestPlace() {
		// TODO Auto-generated method stub
		return testplacedao.getAllTestPlace();
	}

	@Override
	public void freezeTestPlaceById(Integer id, String freeze) {
		// TODO Auto-generated method stub
		testplacedao.freezeTestPlaceById(id, freeze);
	}

	@Override
	public void addTestPlace(TestPlace testPlace) {
		// TODO Auto-generated method stub
		testplacedao.addTestPlace(testPlace);
	}

}
