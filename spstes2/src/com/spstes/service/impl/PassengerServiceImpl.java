package com.spstes.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.spstes.dao.PassengerDao;
import com.spstes.model.PreparedCourse;
import com.spstes.model.PreparedMajor;
import com.spstes.service.PassengerService;

@Service
@Scope("prototype")
public class PassengerServiceImpl implements PassengerService {
	@Autowired
	PassengerDao passengerdao;

	@Override
	public ArrayList<PreparedMajor> searchProfession() {
		// TODO Auto-generated method stub
		return passengerdao.getPreparedMajor();
	}

	@Override
	public ArrayList<PreparedCourse> searchCourse() {
		// TODO Auto-generated method stub
		return passengerdao.getPreparedCourse();
	}

}
