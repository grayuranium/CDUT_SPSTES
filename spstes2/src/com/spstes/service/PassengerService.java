package com.spstes.service;

import java.util.ArrayList;

import com.spstes.model.PreparedCourse;
import com.spstes.model.PreparedMajor;

public interface PassengerService {
	public ArrayList<PreparedMajor> searchProfession();

	public ArrayList<PreparedCourse> searchCourse();
}
