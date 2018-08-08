package com.spstes.service;

import java.util.ArrayList;

import com.spstes.model.TestTime;

public interface TestTimeService {

	public TestTime offerExamInfo();

	public ArrayList<TestTime> offerAllTestTime();

	public int getInstanceNum();

	public ArrayList<TestTime> getLimitedTestTime(int from_index, int amount);

	public int modifyTestTime(TestTime time);

	public int addTestTime(TestTime time);

}
