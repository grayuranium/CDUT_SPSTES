package com.spstes.model;

import java.io.Serializable;

public class PreparedMajorInTestPlace implements Serializable {
	private static final long serialVersionUID = -5411299419558465800L;

	private Integer ID;
	private String test_name;
	private String test_addr;
	private String major_name;
	private String prof_level;
	private String Prof_type;

	public PreparedMajorInTestPlace() {
	}

	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public String getTest_name() {
		return test_name;
	}

	public void setTest_name(String test_name) {
		this.test_name = test_name;
	}

	public String getTest_addr() {
		return test_addr;
	}

	public void setTest_addr(String test_addr) {
		this.test_addr = test_addr;
	}

	public String getMajor_name() {
		return major_name;
	}

	public void setMajor_name(String major_name) {
		this.major_name = major_name;
	}

	public String getProf_level() {
		return prof_level;
	}

	public void setProf_level(String prof_level) {
		this.prof_level = prof_level;
	}

	public String getProf_type() {
		return Prof_type;
	}

	public void setProf_type(String prof_type) {
		Prof_type = prof_type;
	}
}
