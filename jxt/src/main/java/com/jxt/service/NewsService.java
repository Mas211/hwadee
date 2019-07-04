package com.jxt.service;

import java.util.List;

import com.jxt.entity.News;

public interface NewsService {
	// 增
	int add(News news);

	// 删
	int delete(int newsId);

	// 查
	News getNewsById(int newsId);
	
	List<News> findAll();

	// 改
	int update(News news);
	
	List<News> getByEditor(int editorId);
}
