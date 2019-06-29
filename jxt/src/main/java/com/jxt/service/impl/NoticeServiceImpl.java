package com.jxt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Notice;
import com.jxt.service.NoticeService;

 @Service
public class NoticeServiceImpl implements NoticeService {

	 @Autowired
	 private NoticeMapper noticeMapper;

	@Override
	public List<Notice> findAll() {
		// TODO Auto-generated method stub
		return noticeMapper.findAll();
	}


	@Override
	public int delete(int noticeId) {
		// TODO Auto-generated method stub
		return noticeMapper.delete();
	}
	 
	
	
}
