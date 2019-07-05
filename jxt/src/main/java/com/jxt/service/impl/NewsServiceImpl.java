package com.jxt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.News;
import com.jxt.mapper.NewsMapper;
import com.jxt.service.NewsService;

@Service
public class NewsServiceImpl implements NewsService {
	@Autowired
	private NewsMapper newsMapper;

	@Override
	public int add(News news) {
		// TODO Auto-generated method stub
		int rows = newsMapper.insert(news);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return news.getNewsId();
	}

	@Override
	public int delete(int newsId) {
		// TODO Auto-generated method stub
		return newsMapper.delete(newsId);
	}

	@Override
	public News getNewsById(int newsId) {
		// TODO Auto-generated method stub
		return newsMapper.findById(newsId);
	}

	@Override
	public int update(News news) {
		// TODO Auto-generated method stub
		return newsMapper.update(news);
	}

	@Override
	public List<News> findAll() {
		// TODO Auto-generated method stub
		return newsMapper.findAll();
	}

	@Override
	public List<News> getByEditor(int editorId) {
		// TODO Auto-generated method stub
		return newsMapper.getByEditor(editorId);
	}
	
	

}
