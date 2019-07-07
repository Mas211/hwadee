package com.jxt.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LogoutController {

	//@RequestMapping(value="/logout",method=RequestMethod.GET)
	//public String get() {
	//	return "logout";
	//}
	
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String login(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException {
		//false代表：不创建session对象，只是从request中获取。
		HttpSession session = request.getSession(false);
		//获取申请注销需求的地址
		String temp = request.getRequestURL().toString();
		//对地址进行处理
		String target[] = temp.split("/");
		if(session.getAttribute("account")  ==null){
			//session为空时，返回请求页面，即不能注销
			return target[3];
		}
		session.removeAttribute("account");
		//重定向到index
		return "redirect:/index";
	}
}
