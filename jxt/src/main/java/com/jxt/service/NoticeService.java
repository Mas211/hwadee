package com.jxt.service;

import java.util.List;

import com.jxt.entity.Notice;

public interface NoticeService {

	List<Notice> findAll();
	
	int delete(int noticeId);
}
