package com.spstes.service;

import java.util.ArrayList;

import com.spstes.model.PreparedMajorInTestPlace;

public interface PreparedMajorInTestPlaceService {

	public void deletePreparedMajorInTestPlaceById(Integer id);

	public ArrayList<PreparedMajorInTestPlace> offerAllMajorInTestPlaceById();
}
