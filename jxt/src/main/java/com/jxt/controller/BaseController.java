package com.jxt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BaseController {
	
	@GetMapping("/about")
	public String getAbout() {
		return "/about";
	}
	
	@GetMapping("/codes")
	public String getCodes() {
		return "/codes";
	}
	
	@GetMapping("/courses")
	public String getCourses() {
		return "/courses";
	}
	
	@GetMapping("/gallery")
	public String getGallery() {
		return "/gallery";
	}
	
	@GetMapping("/icons")
	public String getIcons() {
		return "/icons";
	}
	@GetMapping("/demo")
	public String getDemo() {
		return "/demo";
	}
}
