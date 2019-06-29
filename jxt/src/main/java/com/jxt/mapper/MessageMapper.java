package com.jxt.mapper;

import java.util.List;

import com.jxt.entity.Message;

public interface MessageMapper {

	List<Message> findByCommenterId(int commenterId);
	
	int insert(Message message);
	
	int delete(int messageId);
	
	List<Message> findByCommenterTargetId(int commenterTargetId);
	
}
