package com.spstes.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.spstes.dao.TestTimeDao;
import com.spstes.model.TestTime;
import com.spstes.service.TestTimeService;

public class TestTimeServiceImpl implements TestTimeService {
	@Autowired
	TestTimeDao testtimedao;

	@Override
	public TestTime offerExamInfo() {
		// TODO Auto-generated method stub
		return testtimedao.findLatestTestTime();
	}

	@Override
	public ArrayList<TestTime> offerAllTestTime() {
		// TODO Auto-generated method stub
		return testtimedao.getLimitedTestTime(0, 10);
	}

	@Override
	public void modifyTestTime(TestTime time) {
		// TODO Auto-generated method stub
		testtimedao.updateTestTimeByInstance(time);
	}

	@Override
	public void addTestTime(TestTime time) {
		// TODO Auto-generated method stub
		testtimedao.addTestTime(time);
	}

}
