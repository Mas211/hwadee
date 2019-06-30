package com.jxt.service;

import com.jxt.entity.News;

public interface NewsService {
	// 增
	int add(News news);

	// 删
	int delete(int newsId);

	// 查
	News getNewsById(int newsId);

	// 改
	int update(News news);
}
