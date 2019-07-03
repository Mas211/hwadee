package com.jxt.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jxt.entity.Account;
import com.jxt.service.RegisterService;

@Controller
public class RetrieveController {
	
	String target=" ";
	@Autowired
	private RegisterService registerService;
	
	@RequestMapping(value="/retrieve",method=RequestMethod.GET)
	public String get(){
		return "retrieve";
	}
	
	
	@RequestMapping(value="/retrieve",method=RequestMethod.POST)
	public String login(Account account,HttpServletRequest request)
			throws ServletException, IOException {
		Account account_temp = registerService.check1(account.getAccountId());
		if(account_temp.getAccountPhone().equalsIgnoreCase(account.getAccountPhone())) {
			account_temp.setAccountPassword(account.getAccountPassword());
			registerService.update(account_temp);
			target = "redirect:/login";
		}
		else {
			request.setAttribute("msg", "非绑定电话,请重新输入");
			target =  "retrieve";
		}
		return target;
	}
}
