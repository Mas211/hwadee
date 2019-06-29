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
	private MessageMapper messgeMapper;
	
	@Override
	public List<Message> list(int commenterId) {
		// TODO Auto-generated method stub
		return messgeMapper.findById(commenterId);
	}

	@Override
	public int delete(int messageId) {
		// TODO Auto-generated method stub
		return messgeMapper.delete(messageId);
	}

	@Override
	public int insert(Message message) {
		// TODO Auto-generated method stub
		return messgeMapper.insert(message);
	}

}
