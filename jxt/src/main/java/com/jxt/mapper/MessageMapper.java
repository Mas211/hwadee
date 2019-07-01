package com.jxt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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
	//typeId=1表示留言
	//typeId=2表示新闻
	List<Message> findBySourceId(@Param("sourceId")int sourceId,@Param("typeId")int typeId);
	
	//找出所有回复用户的留言
	List<Message> findByTargetId(@Param("targetId")int targetId,@Param("typeId")int typeId);
	
}
