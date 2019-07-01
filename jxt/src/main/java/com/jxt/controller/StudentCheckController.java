package com.jxt.controller;

import java.io.IOException;

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
public class StudentCheckController {

	@Autowired
	private RegisterService registerService; 
	
	@RequestMapping(value="/studentCheck",method=RequestMethod.GET)
	public String get(){
		return "studentCheck";
	}
	@RequestMapping(value="/studentCheck",method=RequestMethod.POST)
	public String login(Account account,HttpServletRequest request)
			throws ServletException, IOException {
		String target = "";
		//二.调用业务逻辑 
		Account account_student = registerService.check1(account.getAccountId());
				if(registerService.check(account.getAccountId())==1 && account.getAccountName().equalsIgnoreCase(account_student.getAccountName())){//根据用户名和密码找到了该用户
					//验证成功
					HttpSession session = request.getSession(true);
					session.setAttribute("account", account);//把user对象存到session中 以后每个页面中都可以取出来使用
					target = "redirect:/register";
				}else{
					//登录失败 跳回登录页面 显示 "用户名或密码错误"
					request.setAttribute("msg", "账号和姓名不符");
					target = "studentCheck";
				}
				return target;
	}
}