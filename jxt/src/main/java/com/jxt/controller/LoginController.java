package com.jxt.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jxt.entity.Account;
import com.jxt.service.RegisterService;


@Controller
public class LoginController {

	@Autowired
	private RegisterService registerService; 
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String get(){
		return "login";
	}
	
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String target = "";
		//一.填充数据
		String accountId = request.getParameter("accountId");
		int accountId_int = Integer.parseInt(accountId);
		String password = request.getParameter("accountPassword");
		Account account=registerService.check1(accountId_int);
		//二.调用业务逻辑 
				if(account!=null && password.equalsIgnoreCase(account.getAccountPassword())){//根据用户名和密码找到了该用户
					//登录成功
					HttpSession session = request.getSession(true);
					session.setAttribute("account", account);//把user对象存到session中 以后每个页面中都可以取出来使用
					target = "redirect:/register";
				}else{
					//登录失败 跳回登录页面 显示 "用户名或密码错误"
					request.setAttribute("msg", "用户名或密码错误,请重新输入");
					target = "login";
				}
				return target;
	}
	

}
