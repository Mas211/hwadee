package com.jxt.mapper;

<<<<<<< HEAD
import java.util.List;

import com.jxt.entity.Message;

public interface MessageMapper {

	List<Message> findByCommenterId(int commenterId);
	
	int insert(Message message);
	
	int delete(int messageId);
	
	List<Message> findByCommenterTargetId(int commenterTargetId);
	
=======
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
>>>>>>> c5e955072e063d1439a4632d3fdee216791fb5b9
}
