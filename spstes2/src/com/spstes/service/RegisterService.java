package com.spstes.service;

import com.spstes.model.UserInfo;

public interface RegisterService {

	public UserInfo findUserByAccount(String login_name);

	public UserInfo finUserByIDCard(String IDCard);

	public Boolean userValidation(UserInfo user);

	public String ISO2UTF8(String src);

	public int addUser(UserInfo user);
}
