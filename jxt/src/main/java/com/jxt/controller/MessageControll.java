package com.jxt.controller;

import java.security.cert.CertPathChecker;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.validator.spi.valuehandling.ValidatedValueUnwrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.jxt.entity.Account;
import com.jxt.entity.Message;
import com.jxt.entity.Value;
import com.jxt.service.MessageService;

@Controller
@RequestMapping(value = "/MyMessages")
public class MessageControll {
	
	@Autowired
	private MessageService messageService;
	
	@GetMapping("/title")
	public @ResponseBody String title(String id) {
		System.out.println("111111");
		if(id.equals("news")) {
			System.out.println("2222");
			return "新闻通知";
		}
		else if(id.equals("homeworks")) {
			return "作业通知";
		}
		else if(id.equals("leavingMessages")) {
			return "我的回复";
		}
		return "新闻通知";
	}
	
	@GetMapping("/classification")
	public @ResponseBody Value news(int typeId, HttpSession httpSession) {

		System.out.println("垃圾分类中");
		int targetId = (int) httpSession.getAttribute("id");
		Value value = new Value();
		value.setFlag(typeId);
		
		if(typeId==1) {
			value.setNews(messageService.listNewsMessages(targetId));
		}
		else if(typeId==2) {
			value.setHomeworks(messageService.listHomeWorksMessages(targetId));
		}
		else if(typeId==3) {
			value.setRecMessages(messageService.listRecMessages(targetId));
		}
		return value;
	}
	
	@GetMapping("/homeworks")
	public @ResponseBody void homeworks() {
		
	}
	
	@GetMapping("/leavingMessages")
	public @ResponseBody void leavingMessages() {
		
	}
	
	@GetMapping("/delete")
	public @ResponseBody void delete(int messageId) {
		System.out.println(messageId+"已被删除");
		messageService.delete(messageId);
	}
	
	//test
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String login(HttpSession session) {
		session.setAttribute("id", 1);
		return "MessageCenter/news";
	}
	
//	@RequestMapping(value = "/news",method = RequestMethod.GET)
//	public String listNews(HttpSession session,Model model) {
//		
//		int tagetId = (int) session.getAttribute("id");
//		List<Message> news = messageService.listNewsMessages(tagetId,2);
//		model.addAttribute("news", news);
//		System.out.println("11111");
//		return "MessageCenter/news";
//	}

	@GetMapping("/test")
	public @ResponseBody void test() {
		System.out.println("我被按了");
	}
}
