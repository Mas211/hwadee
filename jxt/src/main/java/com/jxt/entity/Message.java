package com.jxt.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

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
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date time;
	private String messagePath;
	private String messageContent;
	//
	private Account account;
	private Message replyMessage;
	
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
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
	public Message getReplyMessage() {
		return replyMessage;
	}
	public void setReplyMessage(Message replyMessage) {
		this.replyMessage = replyMessage;
	}
	@Override
	public String toString() {
		return "Message [messageId=" + messageId + ", actId=" + actId + ", sourceId=" + sourceId + ", targetId="
				+ targetId + ", replyId=" + replyId + ", isRead=" + isRead + ", messageType=" + messageType
				+ ", commentActId=" + commentActId + ", time=" + time + ", messagePath=" + messagePath
				+ ", messageContent=" + messageContent + ", account=" + account + ", replyMessage=" + replyMessage
				+ "]";
	}
	
	
}
