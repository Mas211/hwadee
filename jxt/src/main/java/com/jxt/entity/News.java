package com.jxt.entity;

import java.sql.Timestamp;

public class News {
	private Integer newsId;
	private Integer editorId;
	private String newsTitle;
	private Timestamp newsCreate;
	private String newsContent;
	private String newsWord;
	private String publisher;
	
	
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
	public String getNewsWord() {
		return newsWord;
	}
	public void setNewsWord(String newsWord) {
		this.newsWord = newsWord;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	
	
}
