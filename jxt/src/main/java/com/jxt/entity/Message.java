package com.jxt.entity;

//消息
public class Message {
	private Integer messageId;
	private Integer actId;
	private Integer sourceId;
	private Integer targetId;
	private Integer replyId;
	private Integer isRead;
	private Integer messageType;
	private Integer commentActId;
	private String time;
	private String messagePath;
	private String messageContent;
	//
	private Account account;
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getMessagePath() {
		return messagePath;
	}
	public void setMessagePath(String messagePath) {
		this.messagePath = messagePath;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	public String getMessageContent() {
		return messageContent;
	}
	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}
	public Integer getMessageId() {
		return messageId;
	}
	public void setMessageId(Integer messageId) {
		this.messageId = messageId;
	}
	public Integer getActId() {
		return actId;
	}
	public void setActId(Integer actId) {
		this.actId = actId;
	}
	public Integer getSourceId() {
		return sourceId;
	}
	public void setSourceId(Integer sourceId) {
		this.sourceId = sourceId;
	}
	public Integer getTargetId() {
		return targetId;
	}
	public void setTargetId(Integer targetId) {
		this.targetId = targetId;
	}
	public Integer getReplyId() {
		return replyId;
	}
	public void setReplyId(Integer replyId) {
		this.replyId = replyId;
	}
	public Integer getIsRead() {
		return isRead;
	}
	public void setIsRead(Integer isRead) {
		this.isRead = isRead;
	}
	public Integer getMessageType() {
		return messageType;
	}
	public void setMessageType(Integer messageType) {
		this.messageType = messageType;
	}
	public Integer getCommentActId() {
		return commentActId;
	}
	public void setCommentActId(Integer commentActId) {
		this.commentActId = commentActId;
	}
}
