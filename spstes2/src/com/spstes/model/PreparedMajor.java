package com.spstes.model;

import java.io.Serializable;

public class PreparedMajor implements Serializable {

	private static final long serialVersionUID = -1313196617664610044L;

	private String major_name;
	private String begin_date;
	private String end_date;
	private Integer exa_num;
	private String test_name;
	private String prof_level;
	private String Prof_type;

	public PreparedMajor() {
	}

	public String getMajor_name() {
		return major_name;
	}

	public void setMajor_name(String major_name) {
		this.major_name = major_name;
	}

	public String getBegin_date() {
		return begin_date;
	}

	public void setBegin_date(String begin_date) {
		this.begin_date = begin_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public Integer getExa_num() {
		return exa_num;
	}

	public void setExa_num(Integer exa_num) {
		this.exa_num = exa_num;
	}

	public String getTest_name() {
		return test_name;
	}

	public void setTest_name(String test_name) {
		this.test_name = test_name;
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
