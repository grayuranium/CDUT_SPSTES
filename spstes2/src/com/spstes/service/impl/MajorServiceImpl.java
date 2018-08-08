package com.spstes.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spstes.dao.MajorDao;
import com.spstes.model.Major;
import com.spstes.service.MajorService;

@Service
public class MajorServiceImpl implements MajorService {
	@Autowired
	MajorDao majordao;

	@Override
	public ArrayList<Major> offerLimitedAllMajor(int fromIndex, int amount) {
		return majordao.getLimitedMajorByType(null, fromIndex, amount);
	}

	@Override
	public ArrayList<Major> offerLimitedMajorByType(String type, int fromIndex, int amount) {
		return majordao.getLimitedMajorByType(type, fromIndex, amount);
	}

	@Override
	public void addMajor(Major major) {
		majordao.addMajor(major);
	}

	@Override
	public void freezeMajorById(Integer id, String freeze) {
		majordao.freezeMajorById(id, freeze);
	}

	@Override
	public void modifyMajorAnser(Integer id, String anser) {
		majordao.updateMajorAnserById(id, anser);
	}

	@Override
	public void modifyMajorCredit(Integer id, Double credit) {
		majordao.updateMajorCreditById(id, credit);
	}

	@Override
	public int getInstanceNum(String type) {
		return majordao.getInstanceNum(type);
	}

	@Override
	public ArrayList<Major> offerAllMajor() {
		return majordao.getMajorByType(null);
	}

	@Override
	public ArrayList<Major> offerMajorByType(String type) {
		return majordao.getMajorByType(type);
	}

}
