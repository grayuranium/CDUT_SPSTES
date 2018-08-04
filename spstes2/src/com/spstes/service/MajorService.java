package com.spstes.service;

import java.util.ArrayList;

import com.spstes.model.Major;

public interface MajorService {

	public ArrayList<Major> offerAllMajor();

	public ArrayList<Major> offerMajorByType(String type);

	public void addMajor(Major major);

	public void freezeMajorById(Integer id, String freeze);

	public void modifyMajorAnser(Integer id, String anser);

	public void modifyMajorCredit(Integer id, Double credit);
}
