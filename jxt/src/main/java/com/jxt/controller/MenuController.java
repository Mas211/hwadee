package com.jxt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MenuController {
	@RequestMapping(value="/adminMenu",method=RequestMethod.GET)
	public String getAdmin(){
		return "adminMenu";
	}
	@RequestMapping(value="/masterMenu",method=RequestMethod.GET)
	public String getMaster(){
		return "masterMenu";
	}
	@RequestMapping(value="/teacherMenu",method=RequestMethod.GET)
	public String getTeacher(){
		return "teacherMenu";
	}
	@RequestMapping(value="/parentMenu",method=RequestMethod.GET)
	public String getParent(){
		return "parentMenu";
	}
	@RequestMapping(value="/studentMenu",method=RequestMethod.GET)
	public String getStudent(){
		return "studentMenu";
	}
}
