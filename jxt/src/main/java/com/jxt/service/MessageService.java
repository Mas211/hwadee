package com.jxt.service;

import java.util.List;

import com.jxt.entity.Message;

public interface MessageService {
	// 增
	int add(Message message);

	// 删
	int delete(int messageId);

	// 查
	Message getMessageById(int messageId);

	// 改
	int update(Message message);
	
	//列出发出的留言
	//typeId=1
	List<Message> listLeavMessages(int sourceId);
	
	//列出收到的回复
	List<Message> listRecMessages(int targetId);
	
	//列出新闻通知
	//typeId=2
	List<Message> listNewsMessages(int targetId);

}
