package com.jxt.entity;

import java.security.Timestamp;

public class News {
	private Integer newsId;
	private String newsTitle;
	private Timestamp newsTime;
	private String publisher;
	

	public Integer getNewsId() {
		return newsId;
	}
	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public Timestamp getNewsTime() {
		return newsTime;
	}
	public void setNewsTime(Timestamp newsTime) {
		this.newsTime = newsTime;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
}
