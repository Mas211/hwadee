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
public class HomePageController {
	
	String target="";
	@Autowired
	private RegisterService registerService; 
	@RequestMapping(value="/personalInformationViewing",method=RequestMethod.GET)
	public String getview(){
		return "personalInformationViewing";
	}
	
	@RequestMapping(value="/updateinformation",method=RequestMethod.POST)
	public String getupdateinformation(){
		return "redirect:/personalInformationUpdating";
	}
	
	@RequestMapping(value="/personalInformationUpdating",method=RequestMethod.GET)
	public String getupdate(){
		return "personalInformationUpdating";
	}
	
	@RequestMapping(value="/personalInformationUpdating",method=RequestMethod.POST)
	public String getupdateimpl(Account account,HttpServletRequest request)throws ServletException, IOException{
		HttpSession session = request.getSession(false);
		Account account_temp = (Account)session.getAttribute("account");
		if(account_temp.getRoleId()==5)
		{
			account_temp.setAccountName(account.getAccountName());
			account_temp.setAccountSex(account.getAccountSex());
			account_temp.setAccountPhone(account.getAccountPhone());
			account_temp.setAccountAddress(account.getAccountAddress());
			account_temp.setAccountClassId(account.getAccountClassId());
			registerService.update(account_temp);
		}
		else if(account_temp.getRoleId()==4)
		{
			account_temp.setAccountName(account.getAccountName());
			account_temp.setAccountSex(account.getAccountSex());
			account_temp.setAccountPhone(account.getAccountPhone());
			account_temp.setAccountAddress(account.getAccountAddress());
			registerService.update(account_temp);
		}
		else if(account_temp.getRoleId()==3 || account_temp.getRoleId()==3)
		{
			account_temp.setAccountName(account.getAccountName());
			account_temp.setAccountSex(account.getAccountSex());
			account_temp.setAccountPhone(account.getAccountPhone());
			account_temp.setAccountAddress(account.getAccountAddress());
			account_temp.settSubject(account.gettSubject());
			registerService.update(account_temp);
		}
		else
		{
			account_temp.setAccountName(account.getAccountName());
			account_temp.setAccountSex(account.getAccountSex());
			account_temp.setAccountPhone(account.getAccountPhone());
			account_temp.setAccountAddress(account.getAccountAddress());
			registerService.update(account_temp);
		}
		session.setAttribute("account", account_temp);
		return "redirect:/menu";
	}
}
