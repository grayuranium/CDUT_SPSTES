package com.spstes.service.impl;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spstes.dao.RegisterDao;
import com.spstes.model.UserInfo;
import com.spstes.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService {
	@Autowired
	private RegisterDao registerDao;

	@Override
	public UserInfo findUserByAccount(String login_name) {
		UserInfo user = registerDao.findUserByAccount(login_name);
		return user;
	}

	@Override
	public UserInfo finUserByIDCard(String IDCard) {
		UserInfo user = registerDao.finUserByIDCard(IDCard);
		return user;
	}

	@Override
	public Boolean userValidation(UserInfo user) {
		if (null == user.getIDcard() || null == user.getLogin_name() || null == user.getTelphone()
				|| null == user.getUser_name() || null == user.getUser_paw())
			return false;

		// 18位身份证匹配
		String regIDCard = "^[1-9]\\d{5}(18|19|([23]\\d))\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{3}[0-9Xx]$";
		// 5-15 位
		String regLoginName = "^[a-zA-Z_]\\w{5,15}$";
		// 6-20 位，字母、数字、字符
		String regPwd = "^([A-Z]|[a-z]|[0-9]|['-=\\[\\];,\\./~!@#\\$%\\^\\*\\(\\)_\\+\\}\\{:\\?]){6,20}$";
		// 手机号码
		String regTel = "^(((13[0-9]{1})|(14[0-9]{1})|(17[0]{1})|(15[0-3]{1})|(15[5-9]{1})|(18[0-9]{1}))+\\d{8})$";

		if ((null == registerDao.findUserByAccount(user.getLogin_name())) && user.getIDcard().matches(regIDCard)
				&& user.getLogin_name().matches(regLoginName) && user.getTelphone().matches(regTel)
				&& user.getUser_paw().matches(regPwd))
			return true;

		return false;
	}

	@Override
	public String ISO2UTF8(String src) {
		if (null == src)
			return null;
		String des = null;
		try {
			des = new String(src.getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return des;
	}

	@Override
	public int addUser(UserInfo user) {
		return registerDao.addUser(user);
	}
}
