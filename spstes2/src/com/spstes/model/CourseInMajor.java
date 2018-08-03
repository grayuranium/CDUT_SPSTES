package com.spstes.model;

import java.io.Serializable;

public class CourseInMajor implements Serializable {

	private static final long serialVersionUID = -7243232401927339359L;

	private Integer couritypeID;
	private Integer courseID;
	private Integer majorID;
	private String bookID;
	private String course_name;
	private String course_Ename;
	private Double course_credit;
	private String course_type;
	private String exa_method;
	private String offer_method;

	public CourseInMajor() {
	}

	public Integer getCouritypeID() {
		return couritypeID;
	}

	public void setCouritypeID(Integer couritypeID) {
		this.couritypeID = couritypeID;
	}

	public Integer getCourseID() {
		return courseID;
	}

	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}

	public Integer getMajorID() {
		return majorID;
	}

	public void setMajorID(Integer majorID) {
		this.majorID = majorID;
	}

	public String getBookID() {
		return bookID;
	}

	public void setBookID(String bookID) {
		this.bookID = bookID;
	}

	public String getCourse_name() {
		return course_name;
	}

	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}

	public String getCourse_Ename() {
		return course_Ename;
	}

	public void setCourse_Ename(String course_Ename) {
		this.course_Ename = course_Ename;
	}

	public Double getCourse_credit() {
		return course_credit;
	}

	public void setCourse_credit(Double course_credit) {
		this.course_credit = course_credit;
	}

	public String getCourse_type() {
		return course_type;
	}

	public void setCourse_type(String course_type) {
		this.course_type = course_type;
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
}
