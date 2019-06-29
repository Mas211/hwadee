package com.jxt.entity;

//消息
public class Message {
	private Integer messageId;
	private Integer commenterId;				//评论ID
	private Integer commentTargetId; 
	private Integer replyId; 					//回复ID
	private Integer isRead;					//是否已读
	private String messageContent;
	
	public Integer getMessageId() {
		return messageId;
	}
	public void setMessageId(Integer messageId) {
		this.messageId = messageId;
	}
	public Integer getCommenterId() {
		return commenterId;
	}
	public void setCommenterId(Integer commenterId) {
		this.commenterId = commenterId;
	}
	public Integer getCommentTargetId() {
		return commentTargetId;
	}
	public void setCommentTargetId(Integer commentTargetId) {
		this.commentTargetId = commentTargetId;
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
	public String getMessageContent() {
		return messageContent;
	}
	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}

}
