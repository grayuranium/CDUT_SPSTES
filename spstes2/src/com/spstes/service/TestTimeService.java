package com.spstes.service;

import java.util.ArrayList;

import com.spstes.model.TestTime;

public interface TestTimeService {

	public TestTime offerExamInfo();

	public ArrayList<TestTime> offerAllTestTime();

	public void modifyTestTime(TestTime time);

	public void addTestTime(TestTime time);
}
