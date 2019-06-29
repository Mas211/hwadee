package com.jxt.entity;

import java.security.Timestamp;

//通知
public class Notice {
	private Integer noticeId;
	private String noticeTitle;
	private String noticeContent;
	private Timestamp noticeTime;
	
	public Integer getNoticeId() {
		return noticeId;
	}
	public void setNoticeId(Integer noticeId) {
		this.noticeId = noticeId;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public Timestamp getNoticeTime() {
		return noticeTime;
	}
	public void setNoticeTime(Timestamp noticeTime) {
		this.noticeTime = noticeTime;
	}
}
