package com.jxt.entity;

public class Teacher {
	private Integer tId;
	private String tName;
	private String tPassword;
	private Integer tAuthLevel;
	private String tSex;
	private Integer tPhone;
	private String tSubject;
	
	public Integer gettId() {
		return tId;
	}
	public void settId(Integer tId) {
		this.tId = tId;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String gettPassword() {
		return tPassword;
	}
	public void settPassword(String tPassword) {
		this.tPassword = tPassword;
	}
	public Integer gettAuthLevel() {
		return tAuthLevel;
	}
	public void settAuthLevel(Integer tAuthLevel) {
		this.tAuthLevel = tAuthLevel;
	}
	public String gettSex() {
		return tSex;
	}
	public void settSex(String tSex) {
		this.tSex = tSex;
	}
	public Integer gettPhone() {
		return tPhone;
	}
	public void settPhone(Integer tPhone) {
		this.tPhone = tPhone;
	}
	public String gettSubject() {
		return tSubject;
	}
	public void settSubject(String tSubject) {
		this.tSubject = tSubject;
	}
}
