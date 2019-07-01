package com.jxt.service;

import com.jxt.entity.Announce;

public interface AnnounceService {
	// 增
	int add(Announce notice);

	// 删
	int delete(int noticeId);

	// 查
	Announce getAnnounceById(int noticeId);

	// 改
	int update(Announce notice);
}
