package com.jxt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jxt.service.MessageService;

@Controller
@RequestMapping(value = "/MyMessages")
public class MessageControll {
	
	@Autowired
	private MessageService messageService;
	
	@RequestMapping(value = "")
	public void list(HttpSession session) {
		
		int commenterId = (int) session.getAttribute("id");
		messageService.list(commenterId);
	}

	
}
