package com.jxt.mapper;

import com.jxt.entity.Notice;

public interface NoticeMapper {
	// 增
	int insert(Notice notice);

	// 删
	int delete(int noticeId);

	// 查
	Notice findById(int noticeId);

	// 改
	int update(Notice notice);
}
