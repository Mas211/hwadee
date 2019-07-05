	package com.jxt.entity;

public class Activity {
	private Integer actId;
	private Integer actPubberId;
	private String actTitle;
	private String imagePath;
	private String actContent;
	private Account account;
	
	public Integer getActId() {
		return actId;
	}
	public void setActId(Integer actId) {
		this.actId = actId;
	}
	public Integer getActPubberId() {
		return actPubberId;
	}
	public void setActPubberId(Integer actPubberId) {
		this.actPubberId = actPubberId;
	}
	public String getActTitle() {
		return actTitle;
	}
	public void setActTitle(String actTitle) {
		this.actTitle = actTitle;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	public String getActContent() {
		return actContent;
	}
	public void setActContent(String actContent) {
		this.actContent = actContent;
	}
}
