package com.jxt.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Message;
import com.jxt.mapper.MessageMapper;
import com.jxt.service.MessageService;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	private MessageMapper messageMapper;

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
	public List<Message> listLeavMessages(int sourceId) {
		// TODO Auto-generated method stub
		return messageMapper.findBySourceId(sourceId, 3);
	}

	@Override
	public List<Message> listRecMessages(int targetId) {
		// TODO Auto-generated method stub
		return messageMapper.findByTargetId(targetId, 3);
	}

	@Override
	public List<Message> listNewsMessages(int targetId) {
		// TODO Auto-generated method stub
		return messageMapper.findByTargetId(targetId, 1);
	}

	@Override
	public List<Message> listHomeWorksMessages(int targetId) {
		// TODO Auto-generated method stub
		return messageMapper.findByTargetId(targetId, 2);
	}
	
	

}
