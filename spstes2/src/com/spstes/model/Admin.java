package com.spstes.model;

import java.io.Serializable;

public class Admin implements Serializable {

	private static final long serialVersionUID = -3636465129333140159L;

	private Integer magID;
	private String login_name;
	private String mag_paw;
	private String mag_tel;
	private String mag_type;
	private String mag_name;

	public Admin() {
	}

	public Integer getMagID() {
		return magID;
	}

	public void setMagID(Integer magID) {
		this.magID = magID;
	}

	public String getMag_paw() {
		return mag_paw;
	}

	public void setMag_paw(String mag_paw) {
		this.mag_paw = mag_paw;
	}

	public String getMag_tel() {
		return mag_tel;
	}

	public void setMag_tel(String mag_tel) {
		this.mag_tel = mag_tel;
	}

	public String getMag_type() {
		return mag_type;
	}

	public void setMag_type(String mag_type) {
		this.mag_type = mag_type;
	}

	public String getMag_name() {
		return mag_name;
	}

	public void setMag_name(String mag_name) {
		this.mag_name = mag_name;
	}

	public String getLogin_name() {
		return login_name;
	}

	public void setLogin_name(String login_name) {
		this.login_name = login_name;
	}

}
