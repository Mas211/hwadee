package com.jxt.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Account;
import com.jxt.entity.Message;
import com.jxt.mapper.AccountMapper;
import com.jxt.mapper.MessageMapper;
import com.jxt.service.MessageService;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	private MessageMapper messageMapper;
	
	@Autowired
	private AccountMapper accountMapper;

	@Override
	public int add(Message message) {
		// TODO Auto-generated method stub
		int rows = messageMapper.insert(message);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return message.getMessageId();
	}

	@Override
	public int delete(int messageId) {
		// TODO Auto-generated method stub
		return messageMapper.delete(messageId);
	}

	@Override
	public Message getMessageById(int messageId) {
		// TODO Auto-generated method stub
		return messageMapper.findById(messageId);
	}

	@Override
	public int update(Message message) {
		// TODO Auto-generated method stub
		return messageMapper.update(message);
	}

	@Override
	public List<Message> listRecMessages(int sourceId) {
		// TODO Auto-generated method stub
		return messageMapper.findBySourceId(sourceId, 3);
	}

	@Override
	public List<Message> listLeavMessages(int targetId) {
		// TODO Auto-generated method stub
		return messageMapper.findByTargetId(targetId, 3);
	}

	@Override
	public List<Message> listNewsMessages() {
		// TODO Auto-generated method stub
		return messageMapper.findNewsHomeworks(1);
	}

	@Override
	public List<Message> listHomeWorksMessages(int accountId) {
		// TODO Auto-generated method stub
		int classId = accountMapper.findClassId(accountId);
		return messageMapper.findByTargetId(classId, 2);
	}

	@Override
	public List<Message> listLeavAccounts(int targetId) {
		// TODO Auto-generated method stub
		 return messageMapper.findLeavAccounts(targetId, 3);
		
	}

	@Override
	public List<Message> listAllChatRecord(int targetId, int sourceId) {
		// TODO Auto-generated method stub
		return messageMapper.findAllByTargetAndSource(targetId,sourceId,3);
	}

	@Override
	public int updateReply(int messageId, int replyId) {
		// TODO Auto-generated method stub
		return messageMapper.updateReply(messageId, replyId);
	}

	@Override
	public int deleteChat(int sourceId, int targetId) {
		// TODO Auto-generated method stub
		return messageMapper.deleteChat(sourceId, targetId);
	}
	
	/*
	 * //判断用户是否存在 public boolean isAccount(int accountId) {
	 * if(accountMapper.findById(accountId) == null) { return true; } return false;
	 * }
	 */
	
}
