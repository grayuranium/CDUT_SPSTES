package com.spstes.model;

import java.io.Serializable;

public class Course implements Serializable {
	private static final long serialVersionUID = 6635535753681081733L;

	private Integer courseID;
	private Integer bookID;
	private String course_Ename;
	private String course_name;
	private String name_report;
	private String code_report;
	private Double course_credit;
	private String course_chara;
	private String exa_method;
	private String offer_method;
	private String course_outline;
	private String course_limit;
	private String course_eva;
	private String bridge_course;
	private String book_name;
	private String used;
	private String cap_course;

	public Course() {
	}

	public Integer getCourseID() {
		return courseID;
	}

	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}

	public Integer getBookID() {
		return bookID;
	}

	public void setBookID(Integer bookID) {
		this.bookID = bookID;
	}

	public String getCourse_Ename() {
		return course_Ename;
	}

	public void setCourse_Ename(String course_Ename) {
		this.course_Ename = course_Ename;
	}

	public String getCourse_name() {
		return course_name;
	}

	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}

	public String getName_report() {
		return name_report;
	}

	public void setName_report(String name_report) {
		this.name_report = name_report;
	}

	public String getCode_report() {
		return code_report;
	}

	public void setCode_report(String code_report) {
		this.code_report = code_report;
	}

	public Double getCourse_credit() {
		return course_credit;
	}

	public void setCourse_credit(Double course_credit) {
		this.course_credit = course_credit;
	}

	public String getCourse_chara() {
		return course_chara;
	}

	public void setCourse_chara(String course_chara) {
		this.course_chara = course_chara;
	}

	public String getExa_method() {
		return exa_method;
	}

	public void setExa_method(String exa_method) {
		this.exa_method = exa_method;
	}

	public String getOffer_method() {
		return offer_method;
	}

	public void setOffer_method(String offer_method) {
		this.offer_method = offer_method;
	}

	public String getCourse_outline() {
		return course_outline;
	}

	public void setCourse_outline(String course_outline) {
		this.course_outline = course_outline;
	}

	public String getCourse_limit() {
		return course_limit;
	}

	public void setCourse_limit(String course_limit) {
		this.course_limit = course_limit;
	}

	public String getCourse_eva() {
		return course_eva;
	}

	public void setCourse_eva(String course_eva) {
		this.course_eva = course_eva;
	}

	public String getBridge_course() {
		return bridge_course;
	}

	public void setBridge_course(String bridge_course) {
		this.bridge_course = bridge_course;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	public String getCap_course() {
		return cap_course;
	}

	public void setCap_course(String cap_course) {
		this.cap_course = cap_course;
	}
}
