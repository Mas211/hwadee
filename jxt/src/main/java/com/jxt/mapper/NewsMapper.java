package com.jxt.mapper;

import java.util.List;

import com.jxt.entity.News;

public interface NewsMapper {
	// 增
	int insert(News news);

	// 删
	int delete(int newsId);

	// 查
	News findById(int newsId);
	
	List<News> findAll();

	// 改
	int update(News news);
	
	List<News> getByEditor(int editorId);
	
	//获得表内记录的条数
	int getRows();
	
	//获得指定范围内的记录
	List<News> getPageNews(int start);
	
	int setTop(int newsId);
	int cancelTop(int newsId);
	
	List<News> getTop();
	
}
