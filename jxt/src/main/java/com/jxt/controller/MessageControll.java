package com.jxt.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jxt.entity.Message;
import com.jxt.service.MessageService;

@Controller
@RequestMapping(value = "/MyMessages")
public class MessageControll {
	
	@Autowired
	private MessageService messageService;
	
	//test
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String login(HttpSession session) {
		session.setAttribute("id", 1);
		return "redirect:/MyMessages/news";
	}
	
	@RequestMapping(value = "/news",method = RequestMethod.GET)
	public String listNews(HttpSession session,Model model) {
		
		int tagetId = (int) session.getAttribute("id");
		List<Message> news = messageService.listNewsMessages(tagetId,2);
		model.addAttribute("news", news);
		System.out.println("11111");
		return "MessageCenter/news";
	}

	
}
