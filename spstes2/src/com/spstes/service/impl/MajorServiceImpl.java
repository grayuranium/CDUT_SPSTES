package com.spstes.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.spstes.dao.MajorDao;
import com.spstes.model.Major;
import com.spstes.service.MajorService;

public class MajorServiceImpl implements MajorService {
	@Autowired
	MajorDao majordao;

	@Override
	public ArrayList<Major> offerAllMajor() {
		// TODO Auto-generated method stub
		return majordao.getMajorByType(null);
	}

	@Override
	public ArrayList<Major> offerMajorByType(String type) {
		// TODO Auto-generated method stub
		return majordao.getMajorByType(type);
	}

	@Override
	public void addMajor(Major major) {
		// TODO Auto-generated method stub
		majordao.addMajor(major);
	}

	@Override
	public void freezeMajorById(Integer id, String freeze) {
		// TODO Auto-generated method stub
		majordao.freezeMajorById(id, freeze);
	}

	@Override
	public void modifyMajorAnser(Integer id, String anser) {
		// TODO Auto-generated method stub
		majordao.updateMajorAnserById(id, anser);
	}

	@Override
	public void modifyMajorCredit(Integer id, Double credit) {
		// TODO Auto-generated method stub
		majordao.updateMajorCreditById(id, credit);
	}

}
