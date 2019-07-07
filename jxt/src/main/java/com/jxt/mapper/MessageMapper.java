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
	
	//找出给他留言的所有人
	List<Message> findLeavMessages(@Param("targetId")int targetId,@Param("typeId")int typeId);
	
	//找出所有给targetId留言的用户(无重复)
	List<Message> findLeavAccounts(@Param("targetId")int targetId, @Param("typeId")int typeId);
	
	//找出两个用户之间所有聊天记录
	List<Message> findAllByTargetAndSource(@Param("targetId")int targetId, @Param("sourceId")int sourceId,  @Param("typeId")int typeId);
	
	//更新回复id
	int updateReply(@Param("messageId")int messageId, @Param("replyId")int replyId);
	
	//查找新闻和作业通知
	List<Message> findNewsHomeworks(@Param("messageType")int messageType);
	
	//删除两个人之间的留言记录
	int deleteChat(@Param("sourceId")int sourceId,@Param("targetId")int targetId);
	
	//将sourceId给targetId的留言全设为已读
	int updateIsRead(@Param("sourceId")int sourceId,@Param("targetId")int targetId);
	
	//查出sourceId给targetId留下的所有已读留言
	List<Message> findIsRead(@Param("sourceId")int sourceId,@Param("targetId")int targetId);
	
	List<Message>findIsReadByTargetId(@Param("targetId")int targetId);
	
}
