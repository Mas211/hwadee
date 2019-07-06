package com.jxt.entity;

import java.util.List;

public class Value {
	
	private List<Message> news;
	private List<Message> homeworks;
	private List<Message> leavMessages;
	private List<Message> leavMessagesAccountList;
	private int flag;//1用于新闻，2用于作业，3用于留言
	
	
	public List<Message> getHomeworks() {
		return homeworks;
	}
	public void setHomeworks(List<Message> homeworks) {
		this.homeworks = homeworks;
	}
	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	public List<Message> getNews() {
		return news;
	}

	public void setNews(List<Message> news) {
		this.news = news;
	}
	public List<Message> getLeavMessages() {
		return leavMessages;
	}
	public void setLeavMessages(List<Message> leavMessages) {
		this.leavMessages = leavMessages;
	}
	public List<Message> getLeavMessagesAccountList() {
		return leavMessagesAccountList;
	}
	public void setLeavMessagesAccountList(List<Message> leavMessagesAccountList) {
		this.leavMessagesAccountList = leavMessagesAccountList;
	}
	
}
