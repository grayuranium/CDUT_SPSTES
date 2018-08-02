package com.spstes.model;

import java.io.Serializable;
import java.math.BigInteger;

public class UserInfo implements Serializable {
	private static final long serialVersionUID = -3025151142074903613L;

	private Integer info_ID;
	private BigInteger majorID;
	private String IDcard;
	private String user_name;
	private String login_name;
	private String user_paw;
	private String user_sex;
	private Integer user_age;
	private String telphone;
	private String Email;
	private String edu_standard;

	public UserInfo() {
		super();
	}

	public int getInfo_ID() {
		return info_ID;
	}

	public void setInfo_ID(Integer info_ID) {
		this.info_ID = info_ID;
	}

	public BigInteger getMajorID() {
		return majorID;
	}

	public void setMajorID(BigInteger majorID) {
		this.majorID = majorID;
	}

	public String getIDcard() {
		return IDcard;
	}

	public void setIDcard(String iDcard) {
		IDcard = iDcard;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getLogin_name() {
		return login_name;
	}

	public void setLogin_name(String login_name) {
		this.login_name = login_name;
	}

	public String getUser_paw() {
		return user_paw;
	}

	public void setUser_paw(String user_paw) {
		this.user_paw = user_paw;
	}

	public String getUser_sex() {
		return user_sex;
	}

	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}

	public int getUser_age() {
		return user_age;
	}

	public void setUser_age(Integer user_age) {
		this.user_age = user_age;
	}

	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getEdu_standard() {
		return edu_standard;
	}

	public void setEdu_standard(String edu_standard) {
		this.edu_standard = edu_standard;
	}

	@Override
	public String toString() {
		return "UserInfo [info_ID=" + info_ID + ", majorID=" + majorID + ", IDcard=" + IDcard + ", user_name="
				+ user_name + ", login_name=" + login_name + ", user_paw=" + user_paw + ", user_sex=" + user_sex
				+ ", user_age=" + user_age + ", telphone=" + telphone + ", Email=" + Email + ", edu_standard="
				+ edu_standard + "]";
	}

}