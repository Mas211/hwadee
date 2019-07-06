package com.jxt.entity;

import java.sql.Timestamp;

public class News {
	private Integer newsId;
	private Integer editorId;
	private String newsTitle;
	private Timestamp newsCreate;
	private String newsContent;
	private String publisher;
	private Timestamp newsModified;
	private String newsCoverPath;
	private String newsIntro;
	private int setTop;
	
	public int getSetTop() {
		return setTop;
	}
	public void setSetTop(int setTop) {
		this.setTop = setTop;
	}
	public String getNewsCoverPath() {
		return newsCoverPath;
	}
	public void setNewsCoverPath(String newsCoverPath) {
		this.newsCoverPath = newsCoverPath;
	}
	public String getNewsIntro() {
		return newsIntro;
	}
	public void setNewsIntro(String newsIntro) {
		this.newsIntro = newsIntro;
	}
	private Account account;
	
	
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	public Timestamp getNewsModified() {
		return newsModified;
	}
	public void setNewsModified(Timestamp newsModified) {
		this.newsModified = newsModified;
	}
	public Integer getNewsId() {
		return newsId;
	}
	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}
	public Integer getEditorId() {
		return editorId;
	}
	public void setEditorId(Integer editorId) {
		this.editorId = editorId;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public Timestamp getNewsCreate() {
		return newsCreate;
	}
	public void setNewsCreate(Timestamp newsCreate) {
		this.newsCreate = newsCreate;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	@Override
	public String toString() {
		return "News [newsId=" + newsId + ", editorId=" + editorId + ", newsTitle=" + newsTitle + ", newsCreate="
				+ newsCreate + ", newsContent=" + newsContent + ", publisher=" + publisher + ", newsModified="
				+ newsModified + ", account=" + account + "]";
	}
	
	
	
}
