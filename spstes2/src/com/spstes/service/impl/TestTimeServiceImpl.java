package com.spstes.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spstes.dao.TestTimeDao;
import com.spstes.model.TestTime;
import com.spstes.service.TestTimeService;

@Service
public class TestTimeServiceImpl implements TestTimeService {
	@Autowired
	TestTimeDao testtimedao;

	@Override
	public TestTime offerExamInfo() {
		return testtimedao.findLatestTestTime();
	}

	@Override
	public ArrayList<TestTime> offerAllTestTime() {
		return testtimedao.getLimitedTestTime(0, 10);
	}

	@Override
	public int modifyTestTime(TestTime time) {
		return testtimedao.updateTestTimeByInstance(time);
	}

	@Override
	public int addTestTime(TestTime time) {
		return testtimedao.addTestTime(time);
	}

	@Override
	public ArrayList<TestTime> getLimitedTestTime(int from_index, int amount) {
		return testtimedao.getLimitedTestTime(from_index, amount);
	}

	@Override
	public int getInstanceNum() {
		return testtimedao.getInstanceNum();
	}
}
