package com.jxt.service;

import java.util.List;

import com.jxt.entity.Announce;

public interface AnnounceService {
	// 增
	int add(Announce announce);

	// 删
	int delete(int announceId);

	// 查
	Announce getAnnounceById(int announceId);

	// 改
	int update(Announce announce);
	
	List<Announce> findAll();
}
