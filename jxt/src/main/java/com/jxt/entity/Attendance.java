package com.jxt.entity;

import java.security.Timestamp;

//考勤
public class Attendance {
	private Integer attenId;
	private Integer attenStuId;
	private Timestamp attenTime;
	
	public Integer getAttenId() {
		return attenId;
	}
	public void setAttenId(Integer attenId) {
		this.attenId = attenId;
	}
	public Integer getAttenStuId() {
		return attenStuId;
	}
	public void setAttenStuId(Integer attenStuId) {
		this.attenStuId = attenStuId;
	}
	public Timestamp getAttenTime() {
		return attenTime;
	}
	public void setAttenTime(Timestamp attenTime) {
		this.attenTime = attenTime;
	}
}
