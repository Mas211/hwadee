package com.jxt.mapper;

import java.util.List;

import com.jxt.entity.Announce;

public interface AnnounceMapper {
	// 增
	int insert(Announce announce);

	// 删
	int delete(int announceId);

	// 查
	Announce findById(int announceId);

	// 改
	int update(Announce announce);
	
	List<Announce> findAll();
	
	int getRows();

	List<Announce> getPageAnnounce(int start);
}
