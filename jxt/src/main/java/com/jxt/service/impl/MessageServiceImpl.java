package com.jxt.service.impl;

<<<<<<< HEAD
import java.util.List;

=======
>>>>>>> d6c89d24e8179f25f55041632cc34efde146caac
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Message;
import com.jxt.mapper.MessageMapper;
import com.jxt.service.MessageService;

@Service
public class MessageServiceImpl implements MessageService {
<<<<<<< HEAD

	@Autowired
	private MessageMapper messgeMapper;
	
	@Override
	public List<Message> list(int commenterId) {
		// TODO Auto-generated method stub
		return messgeMapper.findById(commenterId);
=======
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
>>>>>>> d6c89d24e8179f25f55041632cc34efde146caac
	}

	@Override
	public int delete(int messageId) {
		// TODO Auto-generated method stub
<<<<<<< HEAD
		return messgeMapper.delete(messageId);
	}

	@Override
	public int insert(Message message) {
		// TODO Auto-generated method stub
		return messgeMapper.insert(message);
=======
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
>>>>>>> d6c89d24e8179f25f55041632cc34efde146caac
	}

}
