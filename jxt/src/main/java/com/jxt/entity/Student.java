package com.jxt.entity;

public class Student {
	private Integer stuId;
	private String stuName;
	private String stuPassword;
	private Integer stuAuthLevel;
	private String stuSex;
	private Integer stuClassId;
	
	public Integer getStuId() {
		return stuId;
	}
	public void setStuId(Integer stuId) {
		this.stuId = stuId;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public String getStuPassword() {
		return stuPassword;
	}
	public void setStuPassword(String stuPassword) {
		this.stuPassword = stuPassword;
	}
	public Integer getStuAuthLevel() {
		return stuAuthLevel;
	}
	public void setStuAuthLevel(Integer stuAuthLevel) {
		this.stuAuthLevel = stuAuthLevel;
	}
	public String getStuSex() {
		return stuSex;
	}
	public void setStuSex(String stuSex) {
		this.stuSex = stuSex;
	}
	public Integer getStuClassId() {
		return stuClassId;
	}
	public void setStuClassId(Integer stuClassId) {
		this.stuClassId = stuClassId;
	}
}
