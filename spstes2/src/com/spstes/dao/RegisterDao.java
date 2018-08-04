package com.spstes.dao;

import org.apache.ibatis.annotations.Param;

import com.spstes.model.UserInfo;

public interface RegisterDao {

	public UserInfo findUserByAccount(@Param("login_name") String login_name);

	public UserInfo finUserByIDCard(@Param("IDCard") String IDCard);

	public int addUser(UserInfo user);
}
