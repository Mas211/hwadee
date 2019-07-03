package com.jxt.controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.jxt.entity.Account;
import com.jxt.entity.News;
import com.jxt.service.NewsService;

@Controller
public class NewsController {
	
	@Autowired
	private NewsService newsService;
	
	@GetMapping("/create_news")
	public String get() {
		
		return "newsEditor";
		
	}
	
	@PostMapping("/create_news")
	public String insertNews(News news, HttpServletRequest request) {
		
		news.setEditorId(((Account) (request.getSession().getAttribute("account"))).getAccountId());
		
		Timestamp time = new Timestamp(System.currentTimeMillis());
		news.setNewsCreate(time);
		news.setNewsModified(time);
		
		int rows = newsService.add(news);
		
		return "redirect:/homework";
	}

}
