package com.jxt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MenuController {
	@RequestMapping(value="/u/adminMenu",method=RequestMethod.GET)
	public String getAdmin(){
		return "adminMenu";
	}
	@RequestMapping(value="/u/masterMenu",method=RequestMethod.GET)
	public String getMaster(){
		return "masterMenu";
	}
	@RequestMapping(value="/u/teacherMenu",method=RequestMethod.GET)
	public String getTeacher(){
		return "teacherMenu";
	}
	@RequestMapping(value="/u/parentMenu",method=RequestMethod.GET)
	public String getParent(){
		return "parentMenu";
	}
	@RequestMapping(value="/u/studentMenu",method=RequestMethod.GET)
	public String getStudent(){
		return "studentMenu";
	}
	@RequestMapping(value="/u/s/menu",method=RequestMethod.GET)
	public String getMenu(){
		return "menu";
	}
}
