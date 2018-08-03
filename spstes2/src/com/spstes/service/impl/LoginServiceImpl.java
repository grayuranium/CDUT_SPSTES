package com.spstes.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spstes.dao.LoginDao;
import com.spstes.model.UserInfo;
import com.spstes.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginDao loginDao;

	@Override
	public UserInfo findUserByAccountAndPwd(String login_name, String pwd) {
		UserInfo user = loginDao.findUserByAccountAndPwd(login_name, pwd);
		return user;
	}

}
