package com.jxt.mapper;

import com.jxt.entity.Message;

public interface MessageMapper {
	// 增
	int insert(Message message);

	// 删
	int delete(int messageId);

	// 查
	Message findById(int messageId);

	// 改
	int update(Message message);
}
