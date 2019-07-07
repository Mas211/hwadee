package com.jxt.service;

import java.util.Date;
import java.util.List;

import javax.swing.ListModel;

import com.ctc.wstx.io.ISOLatinReader;
import com.jxt.entity.Account;
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
	//typeId=3
	List<Message> listLeavMessages(int sourceId);
	
	//列出收到的回复
	List<Message> listRecMessages(int targetId);
	
	//列出作业通知
	//typeId=2
	List<Message> listHomeWorksMessages(int accountId);
	
	//列出新闻通知
	//typeId=1
	List<Message> listNewsMessages();
	
	//列出所有的留言用户(无重复)
	List<Message> listLeavAccounts(int targetId);
	
	//列出两个用户之间所有的聊天记录
	List<Message> listAllChatRecord(int targetId, int sourceId);
	
	int updateReply(int messageId, int replyId);
	
	int deleteChat(int sourceId,int targetId);
	
	int toRead(int sourceId,int targetId);
	
	boolean haveNotRead(int sourceId,int targetId);
	
	boolean haveNotReadA(int targetId);
	
	List<Message> listNotReadNews(Date date);
	
	List<Message> listNotReadHomeworks(Date date,int targetId);
	
}
