package com.spstes.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.spstes.model.TestTime;

public interface TestTimeDao {

	public TestTime findLatestTestTime();

	public ArrayList<TestTime> getLimitedTestTime(@Param("fromIndex") int fromIndex, @Param("amount") int amount);

	public int addTestTime(TestTime testTime);

	public int updateTestTimeByInstance(TestTime testTime);
}
