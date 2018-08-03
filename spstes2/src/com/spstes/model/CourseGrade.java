package com.spstes.model;

import java.io.Serializable;

public class CourseGrade implements Serializable {
	private static final long serialVersionUID = -1089335818938255518L;

	private String login_name;
	private String exa_num;
	private String Estart_time;
	private String Estop_time;
	private Double grade;
	private String course_Ename;
	private Integer gradeID;
	private Integer ID;
	private Integer exa_stuID;
	private Integer courseID;

	public CourseGrade() {
	}

	public String getLogin_name() {
		return login_name;
	}

	public void setLogin_name(String login_name) {
		this.login_name = login_name;
	}

	public String getExa_num() {
		return exa_num;
	}

	public void setExa_num(String exa_num) {
		this.exa_num = exa_num;
	}

	public String getEstart_time() {
		return Estart_time;
	}

	public void setEstart_time(String estart_time) {
		Estart_time = estart_time;
	}

	public String getEstop_time() {
		return Estop_time;
	}

	public void setEstop_time(String estop_time) {
		Estop_time = estop_time;
	}

	public Double getGrade() {
		return grade;
	}

	public void setGrade(Double grade) {
		this.grade = grade;
	}

	public String getCourse_Ename() {
		return course_Ename;
	}

	public void setCourse_Ename(String course_Ename) {
		this.course_Ename = course_Ename;
	}

	public Integer getGradeID() {
		return gradeID;
	}

	public void setGradeID(Integer gradeID) {
		this.gradeID = gradeID;
	}

	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public Integer getExa_stuID() {
		return exa_stuID;
	}

	public void setExa_stuID(Integer exa_stuID) {
		this.exa_stuID = exa_stuID;
	}

	public Integer getCourseID() {
		return courseID;
	}

	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}
}
