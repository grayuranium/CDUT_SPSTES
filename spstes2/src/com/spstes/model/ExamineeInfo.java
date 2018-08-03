package com.spstes.model;

import java.io.Serializable;

public class ExamineeInfo implements Serializable {

	private static final long serialVersionUID = 8755478934420151950L;

	private Integer exa_stuID;
	private Integer tex_exaID;
	private int info_ID;
	private Integer exa_majorID;
	private Integer exa_num;
	private String exaID;
	private int pass;

	public ExamineeInfo() {
		super();
	}

	public Integer getExa_stuID() {
		return exa_stuID;
	}

	public void setExa_stuID(Integer exa_stuID) {
		this.exa_stuID = exa_stuID;
	}

	public Integer getTex_exaID() {
		return tex_exaID;
	}

	public void setTex_exaID(Integer tex_exaID) {
		this.tex_exaID = tex_exaID;
	}

	public int getInfo_ID() {
		return info_ID;
	}

	public void setInfo_ID(int info_ID) {
		this.info_ID = info_ID;
	}

	public Integer getExa_majorID() {
		return exa_majorID;
	}

	public void setExa_majorID(Integer exa_majorID) {
		this.exa_majorID = exa_majorID;
	}

	public Integer getExa_num() {
		return exa_num;
	}

	public void setExa_num(Integer exa_num) {
		this.exa_num = exa_num;
	}

	public String getExaID() {
		return exaID;
	}

	public void setExaID(String exaID) {
		this.exaID = exaID;
	}

	public int getPass() {
		return pass;
	}

	public void setPass(int pass) {
		this.pass = pass;
	}

}
