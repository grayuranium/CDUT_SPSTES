package com.spstes.service;

import com.spstes.model.UserInfo;

public interface LoginService {

	public UserInfo findUserByAccountAndPwd(String login_name, String pwd);

}
