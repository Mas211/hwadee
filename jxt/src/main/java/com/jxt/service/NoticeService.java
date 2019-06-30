package com.jxt.service;

import com.jxt.entity.Notice;

public interface NoticeService {
	// 增
	int add(Notice notice);

	// 删
	int delete(int noticeId);

	// 查
	Notice getNoticeById(int noticeId);

	// 改
	int update(Notice notice);
}
