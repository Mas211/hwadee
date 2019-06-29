package com.jxt.service;

import java.util.List;

import com.jxt.entity.Message;

public interface MessageService {
	
	List<Message> list(int commenterId);
	
	int delete(int MessageId);
	
	int insert(Message message);
}
