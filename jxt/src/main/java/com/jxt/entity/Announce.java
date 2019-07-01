package com.jxt.entity;

import java.sql.Timestamp;

//通知
public class Announce {
	private Integer announceId;
	private String announceTitle;
	private String announceContent;
	private Timestamp announceTime;
	
	public Integer getAnnounceId() {
		return announceId;
	}
	public void setAnnounceId(Integer announceId) {
		this.announceId = announceId;
	}
	public String getAnnounceTitle() {
		return announceTitle;
	}
	public void setAnnounceTitle(String announceTitle) {
		this.announceTitle = announceTitle;
	}
	public String getAnnounceContent() {
		return announceContent;
	}
	public void setAnnounceContent(String announceContent) {
		this.announceContent = announceContent;
	}
	public Timestamp getAnnounceTime() {
		return announceTime;
	}
	public void setAnnounceTime(Timestamp announceTime) {
		this.announceTime = announceTime;
	}
}
