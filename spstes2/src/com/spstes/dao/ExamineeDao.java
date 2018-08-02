package com.spstes.dao;

import org.apache.ibatis.annotations.Param;

import com.spstes.model.ExamineeInfo;

public interface ExamineeDao {
	public int addExaminee(@Param("examinee") ExamineeInfo examinee);
}
