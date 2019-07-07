package com.jxt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jxt.entity.Announce;
import com.jxt.entity.News;
import com.jxt.service.AnnounceService;
import com.jxt.service.NewsService;




@Controller
public class IndexController {
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private AnnounceService announceService;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String get(Model model){
//		获取首页显示的新闻和公告
		List<News> topNews = newsService.getTop();
		model.addAttribute("topNews", topNews);
		
		List<News> news = newsService.getPageNews(0);
		model.addAttribute("news", news);
		
		List<Announce> topAnnounce = announceService.getTop();
		model.addAttribute("topAnnounce", topAnnounce);
		
		List<Announce> announce = announceService.getPageAnnounce(0).subList(0, 6);
		model.addAttribute("announce", announce);
		return "index";
	}

}
