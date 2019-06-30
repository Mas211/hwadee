package com.jxt.mapper;

import java.util.List;

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
	
	
	//找出所有发出的留言
	List<Message> findByCommenterId(int commenterId);
	
	//找出所有回复用户的留言
	List<Message> findByCommenterTargetId(int commenterTargetId);
	
}
