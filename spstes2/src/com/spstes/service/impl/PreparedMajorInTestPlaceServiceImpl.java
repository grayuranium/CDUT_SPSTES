package com.spstes.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spstes.dao.PreparedMajorInTestPlaceDao;
import com.spstes.model.PreparedMajorInTestPlace;
import com.spstes.service.PreparedMajorInTestPlaceService;

@Service
public class PreparedMajorInTestPlaceServiceImpl implements PreparedMajorInTestPlaceService {
	@Autowired
	PreparedMajorInTestPlaceDao preparedmajorintestplacedao;

	@Override
	public void deletePreparedMajorInTestPlaceById(Integer id) {
		// TODO Auto-generated method stub
		preparedmajorintestplacedao.deletePreparedMajorInTestPlaceById(id);
	}

	@Override
	public ArrayList<PreparedMajorInTestPlace> offerAllMajorInTestPlaceById() {
		// TODO Auto-generated method stub
		return preparedmajorintestplacedao.getAll();
	}

}
