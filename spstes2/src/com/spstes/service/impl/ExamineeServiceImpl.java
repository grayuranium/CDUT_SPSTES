package com.spstes.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spstes.dao.ExamineeDao;
import com.spstes.model.ExamineeInfo;
import com.spstes.service.ExamineeService;

@Service
public class ExamineeServiceImpl implements ExamineeService {
	@Autowired
	ExamineeDao examineedao;

	@Override
	public void addExam(ExamineeInfo exam) {
		// TODO Auto-generated method stub
		examineedao.addExaminee(exam);
	}

}
