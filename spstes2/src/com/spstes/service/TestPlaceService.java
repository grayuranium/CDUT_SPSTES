package com.spstes.service;

import java.util.ArrayList;

import com.spstes.model.TestPlace;

public interface TestPlaceService {

	public ArrayList<TestPlace> offerAllTestPlace();

	public void freezeTestPlaceById(Integer id, String freeze);

	public void addTestPlace(TestPlace testPlace);
}
