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
			target = "redirect:/login";
		}		
		return target;
	}
	
	@GetMapping("/check2")
	public @ResponseBody int check(String id) {
		
		int result = registerService.check2(id);
		return result;
	}
	
	//添加用户
		@RequestMapping(value="/u/accountadding",method=RequestMethod.GET)
		public String getadding(){
			return "accountadding";
		}
		
		@RequestMapping(value="/u/accountadding",method=RequestMethod.POST)
		public String adding(Account account,HttpServletRequest request) throws Exception{
			String role_id = request.getParameter("choose");
			int role_id_int=0;
			if(registerService.check1(account.getAccountId())!=null){
				//注册失败
				target = "accountadding";
			}else{
				//注册成功
				if("学生".equalsIgnoreCase(role_id))
				{
					role_id_int = 5;
				}
				else if("教师".equalsIgnoreCase(role_id))
				{
					role_id_int = 3;
				}
				else if("家长".equalsIgnoreCase(role_id))
				{
					role_id_int = 4;
				}
				else if("管理员".equalsIgnoreCase(role_id))
				{
					role_id_int = 1;
				}
				account.setRoleId(role_id_int);
				registerService.register(account);
				target = "menu";
			}		
			return target;
		}
		
		//修改用户
		@RequestMapping(value="/u/adminupdating",method=RequestMethod.GET)
		public String getadminupdating(){
			return "adminupdating";
		}
		
		@RequestMapping(value="/u/adminupdating",method=RequestMethod.POST)
		public String updating(Account account,HttpServletRequest request) throws Exception{
			String role_id = request.getParameter("choose");
			int role_id_int=0;
			if(registerService.check1(account.getAccountId())==null){
				//注册失败
				target = "adminupdating";
			}else{
				//注册成功
				if("学生".equalsIgnoreCase(role_id))
				{
					role_id_int = 5;
				}
				else if("教师".equalsIgnoreCase(role_id))
				{
					role_id_int = 3;
				}
				else if("家长".equalsIgnoreCase(role_id))
				{
					role_id_int = 4;
				}
				else if("管理员".equalsIgnoreCase(role_id))
				{
					role_id_int = 1;
				}
				account.setRoleId(role_id_int);
				registerService.update(account);
				target = "menu";
			}		
			return target;
		}
	
	
	
	
}
