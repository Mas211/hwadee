package com.jxt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class IndexController {
	@Autowired
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String get(){
		return "index";
	}

}
