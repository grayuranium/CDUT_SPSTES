package com.spstes.model;

import java.io.Serializable;

public class Cat implements Serializable{
	private static final long serialVersionUID = 8637555672403750924L;
	private int CatID;
	private String Name;
	private String Gender;
	public int getCatID() {
		return CatID;
	}
	public void setCatID(int catID) {
		CatID = catID;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	
}
