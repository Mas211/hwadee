package com.jxt.entity;

import java.sql.Timestamp;

//考勤
public class Attendance {
	private Integer attendId;
	private Integer attendStuId;
	private Timestamp attendTime;
	private Account account;
	
	
	public Integer getAttendId() {
		return attendId;
	}
	public void setAttendId(Integer attendId) {
		this.attendId = attendId;
	}
	public Integer getAttendStuId() {
		return attendStuId;
	}
	public void setAttendStuId(Integer attendStuId) {
		this.attendStuId = attendStuId;
	}
	public Timestamp getAttendTime() {
		return attendTime;
	}
	public void setAttendTime(Timestamp attendTime) {
		this.attendTime = attendTime;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}

}
