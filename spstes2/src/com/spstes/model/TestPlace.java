package com.spstes.model;

import java.io.Serializable;

public class TestPlace implements Serializable {

	private static final long serialVersionUID = 4818588023653929525L;

	private Integer exaID;
	private String test_name;
	private String test_addr;
	private Integer test_num;
	private String linkman_name;
	private String linkman_tel;
	private String test_use;

	public TestPlace() {
	}

	public Integer getExaID() {
		return exaID;
	}

	public void setExaID(Integer exaID) {
		this.exaID = exaID;
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

	public Integer getTest_num() {
		return test_num;
	}

	public void setTest_num(Integer test_num) {
		this.test_num = test_num;
	}

	public String getLinkman_name() {
		return linkman_name;
	}

	public void setLinkman_name(String linkman_name) {
		this.linkman_name = linkman_name;
	}

	public String getLinkman_tel() {
		return linkman_tel;
	}

	public void setLinkman_tel(String linkman_tel) {
		this.linkman_tel = linkman_tel;
	}

	public String getTest_use() {
		return test_use;
	}

	public void setTest_use(String test_use) {
		this.test_use = test_use;
	}
}
