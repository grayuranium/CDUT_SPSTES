package com.spstes.dao;

import org.apache.ibatis.annotations.Param;

import com.spstes.model.Admin;
import com.spstes.model.UserInfo;

public interface LoginDao {

	public UserInfo findUserByAccountAndPwd(@Param("login_name") String login_name, @Param("pwd") String pwd);

	public Admin findAdminByAccountAndPwd(@Param("login_name") String login_name, @Param("pwd") String pwd);

}
