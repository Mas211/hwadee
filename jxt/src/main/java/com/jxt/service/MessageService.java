package com.jxt.service;

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
}
