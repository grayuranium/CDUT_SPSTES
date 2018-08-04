package com.spstes.model;

import java.io.Serializable;

public class Major implements Serializable {
	private static final long serialVersionUID = 6920010666359037294L;

	private Integer majorID;
	private String customID;
	private String major_name;
	private Double major_credit;
	private String major_cour;
	private String used;
	private String AQL;
	private String examine;
	private String examinetime; // 此处使用String类型，数据库使用的是SQL中的datetime类型
	private String remark;
	private String verify;
	private String examineNum;
	private String porf_level;
	private String porf_type;
	private String exa_type;
	private String code_type;
	private String technicality;
	private String cap_major;
	private Integer exaID;
	private Integer uniform_exa;
	private String school;
	private String client_dep;
	private String competent;
	private String pro_class;
	private String pro_limit;
	private String stoptime; // 此处使用String类型，数据库使用的是SQL中的datetime类型
	private Integer stopID;
	private String stopdescribe;
	private String anser;

	public Major() {
	}

	public Integer getMajorID() {
		return majorID;
	}

	public void setMajorID(Integer majorID) {
		this.majorID = majorID;
	}

	public String getCustomID() {
		return customID;
	}

	public void setCustomID(String customID) {
		this.customID = customID;
	}

	public String getMajor_name() {
		return major_name;
	}

	public void setMajor_name(String major_name) {
		this.major_name = major_name;
	}

	public Double getMajor_credit() {
		return major_credit;
	}

	public void setMajor_credit(Double major_credit) {
		this.major_credit = major_credit;
	}

	public String getMajor_cour() {
		return major_cour;
	}

	public void setMajor_cour(String major_cour) {
		this.major_cour = major_cour;
	}

	public String getAQL() {
		return AQL;
	}

	public void setAQL(String aQL) {
		AQL = aQL;
	}

	public String getExamine() {
		return examine;
	}

	public void setExamine(String examine) {
		this.examine = examine;
	}

	public String getExaminetime() {
		return examinetime;
	}

	public void setExaminetime(String examinetime) {
		this.examinetime = examinetime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getVerify() {
		return verify;
	}

	public void setVerify(String verify) {
		this.verify = verify;
	}

	public String getExamineNum() {
		return examineNum;
	}

	public void setExamineNum(String examineNum) {
		this.examineNum = examineNum;
	}

	public String getPorf_level() {
		return porf_level;
	}

	public void setPorf_level(String porf_level) {
		this.porf_level = porf_level;
	}

	public String getPorf_type() {
		return porf_type;
	}

	public void setPorf_type(String porf_type) {
		this.porf_type = porf_type;
	}

	public String getExa_type() {
		return exa_type;
	}

	public void setExa_type(String exa_type) {
		this.exa_type = exa_type;
	}

	public String getCode_type() {
		return code_type;
	}

	public void setCode_type(String code_type) {
		this.code_type = code_type;
	}

	public String getTechnicality() {
		return technicality;
	}

	public void setTechnicality(String technicality) {
		this.technicality = technicality;
	}

	public String getCap_major() {
		return cap_major;
	}

	public void setCap_major(String cap_major) {
		this.cap_major = cap_major;
	}

	public Integer getExaID() {
		return exaID;
	}

	public void setExaID(Integer exaID) {
		this.exaID = exaID;
	}

	public Integer getUniform_exa() {
		return uniform_exa;
	}

	public void setUniform_exa(Integer uniform_exa) {
		this.uniform_exa = uniform_exa;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getClient_dep() {
		return client_dep;
	}

	public void setClient_dep(String client_dep) {
		this.client_dep = client_dep;
	}

	public String getCompetent() {
		return competent;
	}

	public void setCompetent(String competent) {
		this.competent = competent;
	}

	public String getPro_class() {
		return pro_class;
	}

	public void setPro_class(String pro_class) {
		this.pro_class = pro_class;
	}

	public String getPro_limit() {
		return pro_limit;
	}

	public void setPro_limit(String pro_limit) {
		this.pro_limit = pro_limit;
	}

	public String getStoptime() {
		return stoptime;
	}

	public void setStoptime(String stoptime) {
		this.stoptime = stoptime;
	}

	public Integer getStopID() {
		return stopID;
	}

	public void setStopID(Integer stopID) {
		this.stopID = stopID;
	}

	public String getStopdescribe() {
		return stopdescribe;
	}

	public void setStopdescribe(String stopdescribe) {
		this.stopdescribe = stopdescribe;
	}

	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	public String getAnser() {
		return anser;
	}

	public void setAnser(String anser) {
		this.anser = anser;
	}
}
