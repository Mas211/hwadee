package com.jxt.controller;


import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jxt.entity.Account;
import com.jxt.service.RegisterService;


@Controller
public class RegisterController {

	
	@Autowired
	private RegisterService registerService;
	
	
	
	String target = "";
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String get(){
		return "register";
	}
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(Account account,HttpServletRequest request) throws Exception{
		if(registerService.check1(account.getAccountId())!=null){
			//注册失败
			target = "register";
		}else{
			//注册成功
			Account account_student=(Account)request.getSession().getAttribute("account");
			account_student.setParId(account.getAccountId());
			registerService.update(account_student);
			account.setRoleId(4);
			int rows = registerService.register(account);
			target = "redirect:/login.jsp";
		}		
		return target;
	}
	
	@GetMapping("/check2")
	public @ResponseBody int check(String id) {
		
		int result = registerService.check2(id);
		return result;
	}
	
	
	
	
	
	
}
